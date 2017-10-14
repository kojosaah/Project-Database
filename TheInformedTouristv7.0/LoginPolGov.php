<?php include_once('whoVisited.php'); ?>

<!DOCTYPE html>
<html>

<head>

    <title>Login Page</title>

    <link rel="stylesheet" type="text/css" href="LoginStyle.css">

    <link href="https://fonts.googleapis.com/css?family=Rancho" rel="stylesheet">

    <link rel="icon" type="image/gif/png" href="images/LogoFonts.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>


       <a href="informed.php"><img id="logo" src="images/LogoFonts.png"></a>
  


    <form action="dbloginPol.php" method="post">
            
        <h2>Login Form</h2>

        <div class="imgcontainer">
            <img src="images/login_avatar.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <label><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" minlength="" required>

            <button type="submit">Login</button>
            <!-- <input type="checkbox" checked="checked"> Remember me -->
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" class="cancelbtn"><a id="nodeco" href="informed.php">Cancel</a></button>
            <span class="psw">Forgot <a href="contact.php">password?</a></span>
        </div>
    </form>

</body>

</html>