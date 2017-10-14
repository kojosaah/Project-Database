<?php	

function is_correct_login($email, $password) {
	try {
		$db = new  PDO("mysql:host=localhost;dbname=informedTourist", "root", "root");
		$nm = $db->quote($email);
		$rows = $db->query("SELECT Password, Sector FROM Professional WHERE Email = $email");
		if($rows) {
			foreach ($rows as $row) {
				if($password===$row["Password"] && $row["Sector"]==="Health Practitioner"){
					return TRUE;
				}
			}
		}
	  //return FALSE;
	} catch (PDOException $e) {
		echo 'Connection failed: ' . $e->getMessage();
	}
}


if (isset($_POST["uname"]) && isset($_POST["psw"])) {
	$email = '"' + $_POST["uname"] + '"';
	if(is_correct_login($email,$_POST["psw"])){
		$_SESSION["P_ID"] = $email;
		header('location:List_Forms_Health.php');
		echo "Hello ".$email.", you are in.";
   } else {
   		header('location:LoginHealth.php');
	    echo "Sorry, no access.";
   }
} else {
	header('location:LoginHealth.php');
	 echo "Troubles.";
}
?>