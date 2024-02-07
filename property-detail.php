<?php 
//Including Connection
include('connection.php');

$pid = $_POST['pid'];
$sql = "select * from properties where pid = $pid";
$result = mysqli_query($conn,$sql);
$record = mysqli_fetch_array($result)
?>

<img src="images/properties/<?php echo $record['pimg'] ?>" class="responsive-image" alt="property-image"/>
<p><strong>$<?php echo $record['p_price'] ?></strong></p>
<p class="property-address"><?php echo $record['p_address'] ?></p>
