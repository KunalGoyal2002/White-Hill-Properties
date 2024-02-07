<?php 
//Including Connection
include('connection.php');

$uname = $_POST['uname'];
$uemail = $_POST['uemail'];
$phn = $_POST['uphn'];
$msg = $_POST['umsg'];
$propertyAddress = $_POST['paddress'];

$sql = "insert into enquiry (enquiryBy,enquiryFor,enquiryEmail,enquiryPhn,msg) values ('$uname','$propertyAddress','$uemail','$phn','$msg')";

mysqli_query($conn,$sql);

echo "Thanks ".$uname." for enquiring us.We will contact you back.";

?>

