<?php

                                        $con=mysqli_connect("localhost","root","","aviasi");
                                        $result = mysqli_query($con,"SELECT * FROM tb_user WHERE Username ='Aldy'");
                                        while($data=mysqli_fetch_array($result))
                                          
                             { ?>
  <!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <title>ALPHA</title>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>           
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<style type="text/css">


         .container input {
  width: 100%;
  clear: both;
}                     
                           

      .wrapper {
  width: 152px;
  height: 152px;
  position: middle;

}

.loader {
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
  position: center;
   

    

}



@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {  
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>

                        

    </head>

    <body onload="getLocationConstant(), getTime(), getDate()">

 
     
      <h5 align="center"> <?php echo $data['Fullname']; ?></h5>
 
    
  <div class="container">  

          <h4 align="center">
          
<div class="wrapper" style="margin:0 auto;" >
 <div class="loader" style="margin:0 auto;"><?php echo '<img src="data:image/png;base64,' . base64_encode( $data['Photo'] ) . '" style="width:80px;height:80px;" />'; ?> </div>
          </div>

          </h4>
 
      
      <h5 align="center"> <?php echo $data['Role']; ?></h5>

       <form class="col s12" method="POST" action="<?php $_SERVER['PHP_SELF'];?>">

        <div class="input-field col s12" align="center">
          <input align="middle" type="hidden" value="<?php echo $data['Username']; ?>" name="Username" readonly="readonly">
        </div> 

        <div class="input-field col s12" align="center">
          <input align="middle" type="hidden" value="<?php echo $data['NIK']; ?>" name="NIK" readonly="readonly">
        </div> 

         <div class="input-field col s12" align="center">
          <input align="middle" type="hidden" value="<?php echo $data['Fullname']; ?>" name="Fullname" readonly="readonly">
        </div> 

         <div class="input-field col s12" align="center">
          <input align="middle" type="hidden" value="<?php echo $data['Role']; ?>" name="Role" readonly="readonly">
         </div> 

         <div class="input-field col s12">
          <input class="form-control" id="dates" type="text" readonly="readonly" name="Days" style="text-align:center;">
         </div> 

         <div class="input-field col s12">
          <input class="form-control" id="dates" type="text" readonly="readonly" name="Timess" style="text-align:center;">
         </div> 

         <div class="input-field col s12">         
          <input class="form-control" id="distance" type="text" value="" readonly="readonly" name="Dis" style="text-align:center;">
         </div> 

        <div class="form-group">                              
          <input class="form-control" type="hidden"  id="Latitude" name="lat" value="" maxlength="1">
        </div>
        
        <div class="form-group">
          <input class="form-control" type="hidden"  id="Longitude" name="lng" value="" maxlength="1">
        </div>

        <div class="form-group">                        
          <input class="form-control" type="hidden"  id="Position1" name="Position1" value="" readonly="readonly">
        </div>
        
        <?php 

        date_default_timezone_set("Asia/Bangkok");
        $time = date("H:i");
        $timezone = date("e");
        $in = "06:00";
        $break = "15:00";
        $out = "16:30";
        $off = "21:00";
        $new = "00:00";
        
    

        if ($time >= $in && $time <= $break) { ?>
        
         <h5 align="center"> <button onclick="disappear();" class="btn-floating btn-large cyan pulse" type="submit" name="button" id="btn" align="center"><i class="material-icons">edit</i></a></h5>
          <h6 align="center">Check In </h6>
       <?php }



       if ($time >= $out && $time <= $off) { ?>
        
         <h5 align="center"> <button onclick="disappear();" class="btn-floating btn-large cyan pulse" type="submit" name="button" id="btn" align="center"><i class="material-icons">edit</i> </h5>
       <h6 align="center">Check Out </h6>       
       <?php }


       if ($time >= $new && $time <= $in) { ?>
       <h6 align="center">NOT IN SERVICE TIME </h6>       
       <?php }
?>
  

  

 <?php } ?>
    </form>
<?php    

if(isset($_POST['button'])){ //check if form was submitted
  $Username     = $_POST['Username']; //get input text
  $NIK          = $_POST['NIK']; //get input text
  $Fullname     = $_POST['Fullname']; //get input text
  $Role         = $_POST['Role']; //get input text
  $Days         = $_POST['Days'];
  $Position1    = $_POST['Position1'];
  $Dis          = $_POST['Dis'];
  
  if( $_POST['Dis'] < 3.6 && $_POST['Dis'] >0){
    $con=mysqli_connect("localhost","root","","aviasi");
    $query = mysqli_query($con, "INSERT INTO presence (Username, NIK, Fullname, Role, Days, Position1, dis) VALUES ('$Username', '$NIK', '$Fullname', '$Role', '$Days', '$Position1', '$Dis')");
           $query;
          echo "<script type='text/javascript'>alert('Submitted! See you at the evening!')</script>";
            } else {
           echo "<script type='text/javascript'>alert('Fail to submit! Our satelite unable to find you!')</script>";
           }

}    
?>

 <script type="text/javascript">

   function validate(){

    var myButton= document.getElementById('btn');
  

    myButton.style.display ='none';
    myImage.style.display ='inline';

    setTimeout (function(){
        myButton.style.display ='inline';
        myImage.style.display ='none';
    },5000);

}
           
    function getLocationConstant() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(onGeoSuccess, onGeoError);
        } else {
            alert("Your browser or device doesn't support Geolocation");
        }
    }

    // If we have a successful location update
    function onGeoSuccess(event) {
        document.getElementById("Latitude").value = event.coords.latitude;
        document.getElementById("Longitude").value = event.coords.longitude;
        document.getElementById("Position1").value = event.coords.latitude + ", " + event.coords.longitude;
        
    var lat1 = event.coords.latitude;
    var lon1 = event.coords.longitude;
    var lat2 = -6.126145;
    var lon2 = 106.653874;
    
  var R = 6371; // Radius of the earth in km
  var dLat = deg2rad(lat2-lat1);  // deg2rad below
  var dLon = deg2rad(lon2-lon1); 
  var a = 
    Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
    Math.sin(dLon/2) * Math.sin(dLon/2)
    ; 
  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
  var z = R * c; // Distance in km
  document.getElementById("distance").value = z.toFixed(2)+" Kilometer from office";
    }

    // If something has gone wrong with the geolocation request
    function onGeoError(event) {
        alert("Error code " + event.code + ". " + event.message);
    }

     function getTime() {
  var d = new Date();
  var n = d.toLocaleTimeString('en-GB');
  document.getElementById("times").value = n;
}

 function getDate() {
  var d = new Date();
  var n = d.toLocaleTimeString();
  document.getElementById("dates").value = d;
}

function getDistanceFromLatLonInKm() {
    
   
}

function deg2rad(deg) {
  return deg * (Math.PI/180)
}
</script>                             


     <!-- TAP TARGET -->
        <div class="fixed-action-btn" style="bottom:25px;right:24px">
          <a id="menu" onclick="$('.tap-target').tapTarget('open')" class="waves-effect waves-light btn btn-floating btn-large cyan">
            <i class="material-icons">help</i>
          </a>
        </div>

        <!-- TAP TARGET CONTENT -->
        <div class="tap-target cyan" data-activates="menu">
          <div class="tap-target-content white-text">
            <h4 class="indigo darken-4-text">Did You Know?</h4>
            <p class="white-text">The check in feature has been updated, now you can tap the check in button during the check in period (06:00 AM - 11:00 AM) and (16:30 PM - 21:00 PM) for check out period.</p>
            <p class="white-text">The button will be disappear at (11:00 AM - 16:30 PM) and the system will be turned off completely at 22:00 </p>
          </div>
        </div>
        
      <div class="progress">
        <div class="indeterminate"></div>
      </div> 
        


  </div>
     <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
      <script>
        $(document).ready(function(){
          // Init Carousel
          $('.carousel').carousel();

          // Init Carousel Slider
          $('.carousel.carousel-slider').carousel({fullWidth:true});

          // Fire off toast
          //Materialize.toast('Hello World', 3000);

          // Init Slider
          $('.slider').slider();

          // Init Modal
          $('.modal').modal();

          // Init Sidenav
          $('.button-collapse').sideNav();
        });
      </script>
     </body>
    
  </html>
        