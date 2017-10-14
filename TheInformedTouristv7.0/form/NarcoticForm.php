<?php include_once('whoVisited.php'); ?>

<!DOCTYPE html>
<html>

<head>

    <title>Narcotic Information Update</title>

    <link rel="stylesheet" type="text/css" href="view.css">

    <link href="https://fonts.googleapis.com/css?family=Rancho" rel="stylesheet">

    <link rel="icon" type="image/gif/png" href="LogoFonts.png">

    <script type="text/javascript" src="view.js"></script>

</head>

<body id="main_body">

    <a href="../informed.php"><img id="top" src="LogoFonts.png" alt=""></a>
    <div id="form_container">

        <h1><a>Untitled Form</a></h1>
        <form id="form_32517" class="appnitro" method="post" action="update_Narco.php">
            <div class="form_description">
                <h2>Narcotic Information Update</h2>
                <p></p>
            </div>
            <ul>


                <li id="li_2">
                    <label class="description" for="hardName">Name of Narcotic </label>
                    <div>
                        <input id="element_2" name="hardName" class="element text medium" type="text" maxlength="255" value="" required/>
                    </div>
                </li>

                <li>
                    <label class="description" for="typeDrug">Type of Drug </label>
                    <select class="element select medium" id="element_5" name="typeOfDrug"> 
			<option value="" selected="selected"></option>
        
            <option value="Soft Drug" >Soft Drug</option>
            <option value="Hard Drug" >Hard Drug</option>
		</select>
                </li>

                <li id="li_3">
                    <label class="description" for="element_3">Effects </label>
                    <div>
                        <textarea rows="7" cols="60" name="effect" placeholder="Enter text here... Can be numbered."></textarea>
                    </div>
                </li>


                <li class="buttons">
                    <input type="hidden" name="form_id" value="32517" />

                    <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
                </li>
            </ul>

            <br/>

            <a href="../List_Forms_Health.php">Return to List of Forms</a>

        </form>
        <!--<div id="footer">
            Generated by <a href="http://www.phpform.org">pForm</a>
        </div>-->
    </div>
    <img id="bottom" src="bottom.png" alt="">
</body>

</html>