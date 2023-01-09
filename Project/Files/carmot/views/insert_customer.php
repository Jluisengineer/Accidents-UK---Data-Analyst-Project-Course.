<?php

require_once("../management/Insurance_management.php")

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CarMot</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<header id="header_index">
    <h1>Insert a new customer </h1>
</header>
<div class="form_c">
    <form action="customer_register.php" method="post">
        <table align='center'>
            <thead><th>Customer Details</th></thead>
            <tbody>
                <tr>
                    <th><label for="name">Name:</label></th>
                    <th><input type="text" name="name" id="name" placeholder="Name"></th>
                </tr>
                <tr>
                    <th><label for="surname">Surname:</label></th>
                    <th><input type="text" name="surname" id="surname" placeholder="Surname"></th>
                </tr>
                <tr>
                    <th><label for="dob">Date of Birth:</label></th>
                    <th><input type="date" name="dob" id="dob" placeholder="dob"></th>
                </tr>
                <tr>
                    <th><label for="gender">Gender:</label></th>
                    <th><input type="text" name="gender" id="gender" placeholder="gender"></th>
                </tr>
                <tr>
                    <th><label for="address">Address:</label></th>
                    <th><input type="text" name="address" id="address" placeholder="Address"></th>
                </tr>
                <tr>
                    <th><label for="mail">Email:</label></th>
                    <th><input type="email" name="mail" id="mail" placeholder="user@gamil.com"></th>
                </tr>
                <tr>
                    <th><label for="phone">Telephone:</label></th>
                    <th><input type="text" name="phone" id="phone" placeholder="0458 125634"></th>
                </tr>
            </tbody>
            <tfoot><tr><td><button type="reset">Reset</button></td><td><input type="submit" name= "submit" value="Send"></td></tr></tfoot>
            
        </table>
        
    </form>
    <a href="../index.php"><button type="button">Home</button></a>
    </div>
    
</body>
</html>