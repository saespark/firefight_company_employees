<?php 

$conn = mysqli_connect("localhost", "root", "", "input");

  $id             = $_POST['id'];
  $nik            = $_POST['nik'];
  $username     	= $_POST['username'];
  $fullname       = $_POST['fullname'];
  $notelepon     	= $_POST['notlpn']; 
  $address        = $_POST['address']; 
  $jabatan        = $_POST['jabatan'];
  
    
  $query = mysqli_query($conn, "INSERT INTO input_data 
    	(id, nik, username, fullname, notlpn, address, jabatan) VALUES 
    	('$id', $nik', '$username', '$fullname', '$notelepon', '$address', '$jabatan')");
           

           if($query) {
          echo "<script type='text/javascript'>alert('Submitted! See you at the evening!')</script>";
            } else {
           echo "<script type='text/javascript'>alert('Fail to submit! Our satelite unable to find you!')</script>";
           }



?>