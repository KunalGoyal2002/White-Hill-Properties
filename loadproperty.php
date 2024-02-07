<?php 
//Including Connection
include('connection.php');

$limit = $_POST['limit'];

$sql = "";

//Limit 0 values is to limit the records for featured Properties section on Home page
if($limit>0){
    $sql = "select * from properties limit $limit";
}
//Condition to show all records on Properties
else $sql = "select * from properties";

//Executing mysql Query and retrieving data using while loop
$result = mysqli_query($conn,$sql);
while($record = mysqli_fetch_array($result)){

?>

<div class="col-sm-4">
    <div class="property">
        <img src="images/properties/<?php echo $record['pimg'] ?>" class="responsive-image" alt="property-image"/>
        <h3>$<?php echo $record['p_price'] ?></h3>
        <p><?php echo $record['p_address'] ?></p>
        <hr>
        <span class="beds">Beds : <?php echo $record['p_rooms'] ?></span>
        <span class="baths">Baths : <?php echo $record['p_baths'] ?></span>
        <span  class="sqft"><?php echo $record['sqft'] ?> sqft</span>
        <hr>
        <a href="enquire_property.html?propertyid=<?php echo $record['pid']?>" >Enquire Now</a>
    </div>
</div>

<?php
}
?>

