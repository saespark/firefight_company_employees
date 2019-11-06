<?php


$Username = $_POST['Username'];
$Password = $_POST['Password'];

$con=mysqli_connect("localhost","root","","aviasi");

$query = mysqli_query($con, "SELECT COUNT(Username) AS jumlah FROM tb_user 
					WHERE Username='$Username' AND Password='".md5( $Password )."'");
$data = mysqli_fetch_array($query);

if ($data['jumlah'] >= 1){
	session_start();
	$_SESSION['Username']    = $Username;
    $Username = $_SESSION['Username'];  
	header('location:core/menu.php');		
} else {
	header('location:index.html');	
}
?>