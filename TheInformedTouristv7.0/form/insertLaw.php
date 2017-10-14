<?php
try { 
    $dbh = new PDO("mysql:host=localhost;dbname=informedtourist", "root", "root");
     $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}

try {
    
    $sql = "INSERT INTO Law (Type, Offense, Sanction) VALUES (:type, :offense, :sanction)";
    $stmt = $dbh->prepare($sql);
$stmt->bindParam(':type', $_REQUEST['typeOfLaw']);
$stmt->bindParam(':offense', $_REQUEST['offense']);
$stmt->bindParam(':sanction', $_REQUEST['sanction']);
$stmt->execute();

} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql " . $e->getMessage());
}
//$_SESSION['exec'] = True; 

unset($dbh);

//header('location:formHealth.php');

?>
<script language="javascript">
    alert("Record inserted successfully");
    top.location.href = "Law.php"; //the page to redirect
</script>