<?php include_once('whoVisited.php'); ?>

<html>

<head>

    <title>The Informed Tourist</title>

    <link rel="stylesheet" type="text/css" href="queryCSS.css">

    <link href="https://fonts.googleapis.com/css?family=Rancho" rel="stylesheet">

    <link rel="icon" type="image/gif/png" href="images/LogoFonts.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>

    <div id="topbar">

        <div class="try">
             <a href="informed.php"><img id="logo" src="images/LogoFonts.png"></a>
        </div>



        <div class="clear"></div>

        <div id="menu-bar-2-container">

            <div id="menu-bar-2">


                <div class="dropdown">
                    <button class="dropbtn">Tourist Information</button>
                    <div class="dropdown-content">
                        <a href="informed.php">Getting to Holland</a>
                        <a href="PhonePost.php">Phone, Post & Internet</a>
                        <a href="Disable.php">Travelling for the Disabled</a>
                        <a href="Medicalinfo.php">Medical Information</a>
                        <a href="Shop.php">Shopping</a>
                        <a href="Touristinfo.php">Tourist Information Offices</a>
                    </div>
                </div>

                <div class="dropdown">
                    <button class="dropbtn">Recreation & Fun</button>
                    <div class="dropdown-content">
                        <a href="attractions.php">Attractions</a>
                        <a href="nightlife.php">Nightlife</a>
                        <a href="coffeeshops.php">Coffeeshops</a>
                    </div>
                </div>

                <div class="dropdown">
                    <button class="dropbtn">Drugs & Related</button>
                    <div class="dropdown-content">
                        <a href="Alcohol.php">Alcohol</a>
                        <a href="cocaine.php">Cocaine</a>
                        <a href="cannibas.php">Cannabis</a>
                        <a href="tobacco.php">Tobacco</a>
                        <a href="EstSpeed.php">Esctacy & Speed</a>
                        <a href="query.php">Additional Information - Drugs</a>
                    </div>
                </div>

                <div class="dropdown">
                    <button class="dropbtn">Laws & Immigration</button>
                    <div class="dropdown-content">
                        <a href="visa.php">Visa</a>
                        <a href="drugpolicy.php">Drug Policy</a>
                        <a href="sexpolicy.php">Sex Policy</a>
                    </div>
                </div>

                  <div class="dropdown">
                    <button class="dropbtn">Login</button>
                    <div class="dropdown-content">
                    
                        <a href="LoginHealth.php">Health Practitioners</a>
                        <a href="LoginPolGov.php">Police &amp; Government Authority</a>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropbtn" onclick="window.location.href='contact.php'">Contact Us</button>
                </div>

            </div>

        </div>

    </div>

    <div class="clear"></div>


    <div id="page-container">

        <div id="main-article">

            <h2>Drugs & Related</h2>

            <div >

                <h3>More information on Narcotics, Laws and Testing centres:</h3>
                
                <div >
                    
                    
                    <p>On this page, you can access information provided by professionals. Defining these professionals, they are the health experts, the police service, and the policy makers who can be from either industries or fields . The information is scrutinized to check their aunthencity. It is well assessed before being published.  </p>
					
                    <p>Click on the dropdown to select an option for more information</p>
                    
					<form action="query.php" method = "post" >
					
					<div>
						 
                        <select class="contactinput" id="element_5" name="moreinfo"> 
			<!--<option value="" selected="selected"></option>-->
            <option name="narcotic" value="narcotic" >Narcotics</option>
			<option name="testcentre" value="testcentre" >Testing Centres</option>
			<option name="law" value="law" >Laws</option>
        
					<li class="buttons">
                    <input type="hidden"  name="form_id" value="32517" />

                    <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
                 </li>
						</select>
                    </div>
					
						</form>

		              <?php
				
	if(isset($_POST["moreinfo"])) {
        try{
    $pdo = new PDO("mysql:host=localhost;dbname=informedtourist", "root", "root");
    // Set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}
        
 
// Attempt select query execution
try{
    $infoNeeded = $_POST['moreinfo'];
    $nm = $pdo->quote($infoNeeded);
    $result = $pdo->query("SELECT * FROM $infoNeeded");
    
    //$stmt->bindParam(':name', $name);
        
    if($result->rowCount() > 0 && $infoNeeded == "narcotic"){
        echo "Narcotics Information";
        echo "<table>";
            echo "<tr>";
                echo "<th>Narcotic ID</th>";
                echo "<th>Narcotic Name</th>";
                echo "<th>Type</th>";
                echo "<th>Effect</th>";
            echo "</tr>";
        while($row = $result->fetch()){
            echo "<tr>";
                echo "<td>" . $row['narcotic_id'] . "</td>";
                echo "<td>" . $row['name'] . "</td>";
                echo "<td>" . $row['type'] . "</td>";
                echo "<td>" . $row['effect'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        unset($result);
    } else if($result->rowCount() > 0 && $infoNeeded == "testcentre"){
        echo "Testing Centre Information";
        echo "<table>";
            echo "<tr>";
                echo "<th>Name</th>";
                echo "<th>Website</th>";
                echo "<th>Address</th>";
                echo "<th>Phone</th>";
                echo "<th>Cost</th>";
                echo "<th>Details</th>";
            echo "</tr>";
        while($row = $result->fetch()){
            echo "<tr>";
                echo "<td>" . $row['name'] . "</td>";
                echo "<td>" . $row['website'] . "</td>";
                echo "<td>" . $row['address'] . "</td>";
                echo "<td>" . $row['phone'] . "</td>";
                echo "<td>" . $row['cost'] . "</td>";
                echo "<td>" . $row['details'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        unset($result);
    }else if($result->rowCount() > 0 && $infoNeeded == "law"){
        echo "Laws";
        echo "<table>";
            echo "<tr>";
                echo "<th>ID</th>";
                echo "<th>Type</th>";
                echo "<th>Offense</th>";
                echo "<th>Sanction</th>";
            echo "</tr>";
        while($row = $result->fetch()){
            echo "<tr>";
                echo "<td>" . $row['law_id'] . "</td>";
                echo "<td>" . $row['type'] . "</td>";
                echo "<td>" . $row['offense'] . "</td>";
            echo "<td>" . $row['Sanction'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        unset($result);
    } else{
        echo "No records matching your query were found.";
    }
} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql. " . $e->getMessage());
}
 
// Close connection
unset($pdo);
        }
?> 
                   <br/>

                    <br/>
                    
                    <br/>
                    
                    <br/>
                    
                    <br/>
                    
                    <br/>

                    <p><img class="clock" src="images/clock.png"> <span class="date">30 April 2017</span></p>
                        
                    

                    <div id="footer">
                        <h4>Connect on Social Media</h4>
                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-linkedin"></a>
                        <a href="#" class="fa fa-snapchat-ghost"></a>
                    </div>
                    <!-- #footer -->

                </div>



            </div>

        </div>

       


    </div>



			

</body>

</html>