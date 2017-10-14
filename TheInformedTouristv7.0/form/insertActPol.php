<?php
try{
    $dbh = new  PDO("mysql:host=localhost;dbname=informedTourist", "root", "root");
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}

try{

$sql = "INSERT INTO Professional (First_name, Last_name, Professional_id, Email, Sector, Location, Password) VALUES (:fname, :lname, :profid, :email, :sector, :loc, :psw)";

$stmt = $dbh->prepare($sql);
    
$stmt->bindParam(':fname', $Fname);
$stmt->bindParam(':lname', $Lname);
$stmt->bindParam(':profid', $Prof_ID);
    $stmt->bindParam(':email', $email);
$stmt->bindParam(':sector', $Sector);
    $stmt->bindParam(':loc', $Loc);
$stmt->bindParam(':psw', $Psw);

// insert row
$Fname = $_REQUEST['firstnamePol'];
$Lname = $_REQUEST['lastnamePol'];
$Sector = $_REQUEST['sectorPol'];
$Prof_ID = $_REQUEST['IDPolicy'];
$Psw = $_REQUEST['passwordPol'];
$email = $_REQUEST['emailPol'];
$Loc = $_REQUEST['locPol'];
$stmt->execute();

$_SESSION['exec'] = True; 

} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql " . $e->getMessage());
}

unset($dbh);

//header('location:formHealth.php');

?>
<script language="javascript">
    alert("Record inserted successfully");
    top.location.href = "formPolicy.php"; //the page to redirect
</script>
