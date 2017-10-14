<?php
$user_ip = getHostByName(getHostName());//$_SERVER['REMOTE_ADDR']; //getenv('REMOTE_ADDR');
$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$user_ip"));
$city = $geo["geoplugin_city"];
$region = $geo["geoplugin_regionName"];
$country = $geo["geoplugin_countryName"];
/*$mac_string = shell_exec("/usr/sbin/arp -a");
$mac_array = explode(" ",$mac_string);
$mac =  $mac_array[3];*/
$page = $_SERVER['PHP_SELF'];
$Drug = explode("/",$page);
$date = date('Y-m-d H:i:s');


/*
* Getting MAC Address using PHP
* Md. Nazmul Basher
*/
ob_start(); // Turn on output buffering
system('ipconfig /all'); //Execute external program to display output
$mycom=ob_get_contents(); // Capture the output into a variable
ob_clean(); // Clean (erase) the output buffer
$findme = "Physical";
$pmac = strpos($mycom, $findme); // Find the position of Physical text
$mac=substr($mycom,($pmac+36),17); // Get Physical Address





 /*Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with password) */
try{
    $pdo = new PDO("mysql:host=localhost;dbname=informedTourist", "root", "root");
    // Set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}
 
// Attempt insert query execution
try{
    $sql = "INSERT IGNORE INTO visitor (visitor_ip, Country, City, mac_addr) VALUES (:ip, :country, :city, :mac);"; 
    $stmt = $pdo->prepare($sql);
    
    $stmt->bindparam(':ip', $user_ip);
    $stmt->bindparam(':country', $country);
    $stmt->bindparam(':city', $city);
    $stmt->bindparam(':mac', $mac);
    $i = $stmt->execute();
    
    $sql2 = "update visit set page_name = :page, DateTime = :date ORDER BY visit_id DESC LIMIT 1;"; 
    $stmt = $pdo->prepare($sql2);
    
    $stmt->bindparam(':page', $Drug[2]);
    $stmt->bindparam(':date', $date);
    $i = $stmt->execute();
    
    if($i) {
   // echo "Records inserted successfully.";
    }
} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql. " . $e->getMessage());
}
 
// Close connection
unset($pdo);

?>