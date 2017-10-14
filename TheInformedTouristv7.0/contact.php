
<?php
// Functions to filter user inputs
function filterName($field){
    // Sanitize user name
    $field = filter_var(trim($field), FILTER_SANITIZE_STRING);
    
    // Validate user name
    if(filter_var($field, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+/")))){
        return $field;
    }else{
        return FALSE;
    }
}    
function filterEmail($field){
    // Sanitize e-mail address
    $field = filter_var(trim($field), FILTER_SANITIZE_EMAIL);
    
    // Validate e-mail address
    if(filter_var($field, FILTER_VALIDATE_EMAIL)){
        return $field;
    }else{
        return FALSE;
    }
}
function filterString($field){
    // Sanitize string
    $field = filter_var(trim($field), FILTER_SANITIZE_STRING);
    if(!empty($field)){
        return $field;
    }else{
        return FALSE;
    }
}
 
// Define variables and initialize with empty values
$nameErr = $emailErr = $messageErr = "";
$name = $email = $subject = $message = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Validate user name
    if(empty($_POST["name"])){
        $nameErr = 'Please enter your name.';
    }else{
        $name = filterName($_POST["name"]);
        if($name == FALSE){
            $nameErr = 'Please enter a valid name.';
        }
    }
    
    // Validate email address
    if(empty($_POST["email"])){
        $emailErr = 'Please enter your email address.';     
    }else{
        $email = filterEmail($_POST["email"]);
        if($email == FALSE){
            $emailErr = 'Please enter a valid email address.';
        }
    }
    
    // Validate message subject
    if(empty($_POST["subject"])){
        $subject = "";
    }else{
        $subject = filterString($_POST["subject"]);
    }
    
    // Validate user comment
    if(empty($_POST["message"])){
        $messageErr = 'Please enter your comment.';     
    }else{
        $message = filterString($_POST["message"]);
        if($message == FALSE){
            $messageErr = 'Please enter a valid comment.';
        }
    }
    
    // Check input errors before sending email
    if(empty($nameErr) && empty($emailErr) && empty($messageErr)){
        // Recipient email address
        $to = '575599@student.inholland.nl';
        
        // Create email headers
        $headers = 'From: '. $email . "\r\n" .
        'Reply-To: '. $email . "\r\n" .
        'X-Mailer: PHP/' . phpversion();
        
        // Sending email
        if(mail($to, $subject, $message, $headers)){
            header('location:contact.php');
        }else{
            //echo '<p class="error">Unable to send email. Please try again!</p>';
        }
    }
}
?>

<?php include_once('whoVisited.php'); ?>

<html>

<head>

    <meta charset="UTF-8">
    
    <title>Contact Form</title>

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

            <h2>Contact Us</h2>
			       
            <div id="article-container">
                
             <div id="article-summary">
                
                <p>Please fill in this form and send us.</p>
    <form action="contact.php" method="post">
        <p>
            <label for="inputName">Name:<sup>*</sup></label>
            <input type="text" name="name" id="inputName" class="contactinput" value="<?php echo $name; ?>">
            <span class="error"><?php echo $nameErr; ?></span>
        </p>
        <p>
            <label for="inputEmail">Email:<sup>*</sup></label>
            <input type="text" name="email" id="inputEmail" class="contactinput" value="<?php echo $email; ?>">
            <span class="error"><?php echo $emailErr; ?></span>
        </p>
        <p>
            <label for="inputSubject">Subject:</label>
            <input type="text" name="subject" id="inputSubject" class="contactinput" value="<?php echo $subject; ?>">
        </p>
        <p>
            <label for="inputComment">Message:<sup>*</sup></label>
            <textarea name="message" id="inputComment"  rows="7" cols="60"><?php echo $message; ?></textarea>
            <span class="error"><?php echo $messageErr; ?></span>
        </p>
        <input type="submit" value="Send">
        <input type="reset" value="Reset">
    </form>
                    
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
    </div>

        

</body>

</html>

