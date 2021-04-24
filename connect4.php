<?php
  $insp_id = $_POST['insp_id'];
  $name = $_POST['name'];
  $office_add = $_POST['office_add'];
  $pincode=$_POST['pincode'];
  $off_phone=$_POST['off_phone'];
  $per_contact=$_POST['per_contact'];
 //database connection
$dbcon = new mysqli('localhost','root','','test');
if($dbcon->connect_error){
  die('Connection Failed : ' .$dbcon->connect_error);
}else{
   $stmt = $dbcon->prepare("INSERT INTO health_inspector (insp_id,name,office_add,pincode,off_phone,percontact) VALUES( ?, ?, ?, ?, ?, ?)");
   $stmt->bind_param("issiii",$insp_id,$name,$office_add,$pincode,$off_phone,$per_contact);
   $stmt->execute();
   header('location: adminmid.html');
   $stmt->close();
   $dbcon->close();
}

?>
