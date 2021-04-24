<?php
  $person_id = $_POST['person_id'];
  $name = $_POST['name'];
  $age = $_POST['age'];
  $start_date = $_POST['start_date'];
  $end_date = $_POST['end_date'];
  $address = $_POST['address'];
  $phone = $_POST['phone'];
  $pincode=$_POST['pincode'];
 //database connection
$dbcon = new mysqli('localhost','root','','test');
if($dbcon->connect_error){
  die('Connection Failed : ' .$dbcon->connect_error);
}else{
   $stmt = $dbcon->prepare("INSERT INTO quarantine (person_id,name,age,start_date,end_date,address,phone,pincode) VALUES( ?, ?, ?, ?, ?, ?, ?, ?)");
   $stmt->bind_param("isisssss",$person_id,$name,$age,$start_date,$end_date,$address,$phone,$pincode);
   $stmt->execute();
   header('location: adminmid.html');
   $stmt->close();
   $dbcon->close();
}

?>
