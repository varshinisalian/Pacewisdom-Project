<?php
  $patient_id = $_POST['patient_id'];
  $name = $_POST['name'];
  $age = $_POST['age'];
  $current_cond = $_POST['condition'];
  $address = $_POST['address'];
  $phone = $_POST['phone'];
  $pincode=$_POST['pincode'];
 //database connection
$conn = new mysqli ('localhost','root','','test');
if($conn->connect_error){
  die('Connection Failed : ' .$conn->connect_error);
}else{
   $stmt = $conn->prepare("INSERT INTO patient (patient_id,name,age,current_cond,address,phone,pincode) VALUES( ?, ?, ?, ?, ?, ?, ?)");
   $stmt->bind_param("isissss",$patient_id,$name,$age,$current_cond,$address,$phone,$pincode);
   $stmt->execute();
   header('location: adminmid.html');
   $stmt->close();
   $conn->close();
}

?>
