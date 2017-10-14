<?php
try {
    $dbh = new  PDO("mysql:host=localhost;dbname=informedTourist", "root", "root");
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}

try {
    
    $sql = "INSERT INTO TestCentre (name, website, address, phone, cost, details) VALUES (:name, :web, :addr, :phone, :cost, :det)";
    
    $stmt = $dbh->prepare($sql);
        
$stmt->bindParam(':name', $name);
$stmt->bindParam(':web', $website);
$stmt->bindParam(':addr', $Addr);
$stmt->bindParam(':phone', $Phone);
$stmt->bindParam(':cost', $costs);
$stmt->bindParam(':det', $Details);

// insert row
$name = $_REQUEST['nametestcentre'];
$website = $_REQUEST['website'];
$Addr = $_REQUEST['address'];
$Phone = $_REQUEST['phonenumber'];
$costs = $_REQUEST['costTests'];
$Details = $_REQUEST['Details'];
$stmt->execute();

} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql " . $e->getMessage());
}

unset($dbh);


$_SESSION['exec'] = True; 



//header('location:formHealth.php');

?>
<script language="javascript">
    alert("Record inserted successfully");
    top.location.href = "TestingCentres.php"; //the page to redirect
</script>