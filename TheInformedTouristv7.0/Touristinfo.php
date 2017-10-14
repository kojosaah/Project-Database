<?php include_once('whoVisited.php'); ?>

<html>

<head>

    <title>The Informed Tourist</title>

    <link rel="stylesheet" type="text/css" href="InfTour.css">
    
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
                        <a href="EstSpeed.php"
                           >Esctacy & Speed</a>
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

            <h2>Tourist Information</h2>
			
            
            <div id="article-container">
                
                <p>Nearly every city and municipality in Holland has a tourist information office of its own. These can be recognised by their blue and white VVV signs, and are usually found in the local centre.
			</p>

                <h3>What do tourist information offices offer?</h3>

                <div id="article-summary">

                    <p>Every tourist information office in Holland has all information you need about your destination in Holland. For example, the tourist information office staff will gladly help you with: </p>
                   
                
			 
                    <ul>
                        <li>Specific tourist information about the location and the region (such as attractions, restaurants and events)</li>
                        <li>Lodging tips</li>
                        <li>Maps and plans for walking, cycling and car tours</li>
						<li>Guided tours</li>
						<li>Admission tickets</li>
                    </ul>
					<br/>
					<p>Holland' much-visited cities and popular tourist locations commonly have larger tourist information offices which also sell souvenirs and rainwear, for instance.
                          </p>
                    
                    <p><img class="clock" src="images/clock.png"> <span class="date">30 April 2017</span></p>
                    
                    
                    <div id="footer">
                        <h4 >Connect on Social Media</h4>
                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-linkedin"></a>
                        <a href="#" class="fa fa-snapchat-ghost"></a>
                    </div>
                    <!-- #footer -->

                </div>

               

            </div>

        </div>

        <div id="watch-listen">

            <h4>Watch/Listen</h4>
            
            <iframe class="article-side-image" width="560" height="315" src="https://www.youtube.com/embed/tluhJmLcEYM" frameborder="0" allowfullscreen></iframe>
            

            <div class="side-article">

                <p><a class="watch-listen-link" href="">Be Smart. Be Safe. Ignore streetdealers.</a></p>

                <p><img class="clock" src="images/clock.png"> <span class="date">30 April 2017</span></p>

            </div>

            <div class="clear"></div>

        
        </div>


    </div>
    
        

</body>

</html>