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

            <div id="article-container">

                <h4>About Tobacco</h4>
                <h><u>What is Tobacco?</u></h>
                <div id="article-summary">

                    <p>
                        Different names for Tobacco:<br>
                        Cigarattes, Cigars, Shag, Snus, Rollies, Straights</p>
                    <p>Tobacco is one of the drugs that pep you up.</p>
                    <ul>
                        <li>Tobacco is made from the dried leaves of the tobacco plant</li>
                        <li>The leaves are processed into cigarettes, shag or rolling tobacco, snus, pipe tobacco and cigars.</li>
                    </ul>
                    <h><u>Effects OF Tobacco</u></h>

                    <ul>
                        <li>When tobacco burns, it releases nicotine, tar and carbon monoxide.</li>
                        <li>The nicotine cheers you up, calms you down and relaxes you.</li>
                        <li>It increases your heartbeat and constricts your blood vessels.</li>
                        <li>When the nicotine in your body decreases , you get restless. You want another smoke.</li>
                        <li>The tar in tobacco can cause the mucous membranes in your respiratory system to become inflamed.</li>
                        <li>Carbon monoxide displaces the oxygen in your blood. Organs like your heart and muscles are deprived of oxygen.</li>
                    </ul>
                    <h><u>Risks Of Tobacco</u></h>
                    <p>What are you Risking for Tobacco?</p>
                    <ul>
                        <li>Smoking damages your skin and your teeth. It gives you bad breath.</li>
                        <li>Your physical condition deteriorates.</li>
                        <li>Smoking damages your lungs. It makes you more susceptible to bronchitis and lung cancer.</li>
                        <li>Bronchitis gives you a chronic cough. Tar can also cause abnormal cell growth: cancer.</li>
                        <li>Smoking damages your blood vessels. It causes hardening of the arteries, which can eventually lead to heart attacks and strokes.</li>
                        <li>Nicotine is addictive. Your body soon needs more and more nicotine to keep feeling the effects.</li>
                        <li>As the nicotine level in your body declines, you get restless. You light up another smoke.</li>
                        <li>You don’t notice you’re addicted until you try to stop smoking or you’re someplace where you’re not allowed to smoke.</li>
                    </ul>

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