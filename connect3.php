<?php
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = $_POST['password'];

 //database connection
$dbcon = new mysqli('localhost','root','','test');
if($dbcon->connect_error){
  die('Connection Failed : ' .$dbcon->connect_error);
}else{
   $stmt = $dbcon->prepare("INSERT INTO user_details (name,password,email) VALUES( ?, ?, ?)");
   $stmt->bind_param("sss",$name,$password,$email);
   $stmt->execute();
   
   header('location: login.html');
   $stmt->close();
   $dbcon->close();
}

?>
