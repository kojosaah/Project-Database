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

                <h4>About Alcohol</h4>
                <h><u>What is Alcohol?</u></h>
                <div id="article-summary">

                    <p>
                        Different names for Alcohol:<br>
                        Booze, Drink, Spirits, Liquor, Schnapps</p>
                    <ul>
                        <li>Alcohol is one of the drugs that suppress feelings or pain</li>
                        <li>Most beers contain 5% or more alcohol, wines 12% and spirits 30% to 40%</li>
                        <li>Mixed drinks and alcopops contain 5% to 8% alcohol</li>
                        <li>Shots (spirits in small bottles) can contain up to 35% Alcohol disperses throughout your body</li>

                    </ul>
                    <h><u>Effects of Alcohol</u></h>
                    <p>After couple of drinks,you feel cheerful and relaxed.
                        <ul>
                            <li>You feel more self-confident and talkative.</li>
                            <li>If you keep drinking,you get overconfident.You soon have more trouble reacting to situations.</li>
                            <li>If you still keep drinking,your cheerful mood may disappear.</li>
                            <li>You have more trouble talking,walking and focusing on your vision.</li>

                        </ul>
                        <h><u>Risks Of Alcohol</u></h>
                        <p>What are you Risking for Alcohol?</p>
                        <ul>
                            <li>Alcohol makes you fat.One beer contains over 100 calories,<br> a small glass of wine has 80 and a mixed drink has 170 claories.</li>
                            <li>You can get blackouts and forget what happened the night before.(you might have watched Hangover)</li>
                            <li>You get hangovers and feel headache and queasy all day.</li>
                            <li>Drinking on a long term might lead to life threaterning diseases like High Blood Pressure,Stroke,liber diseases,liver cancer,etc.</li>

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