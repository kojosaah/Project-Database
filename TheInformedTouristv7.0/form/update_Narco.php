<?php
try { 
    $dbh = new PDO("mysql:host=localhost;dbname=informedtourist", "root", "root");
     $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}

try {
    
    $sql = "INSERT INTO narcotic (name, type, effect) VALUES (:name, :type, :eff)";
    $stmt = $dbh->prepare($sql);
$stmt->bindParam(':name', $_REQUEST['hardName']);
$stmt->bindParam(':type', $_REQUEST['typeOfDrug']);
$stmt->bindParam(':eff', $_REQUEST['effect']);
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
    top.location.href = "NarcoticForm.php"; //the page to redirect
</script>