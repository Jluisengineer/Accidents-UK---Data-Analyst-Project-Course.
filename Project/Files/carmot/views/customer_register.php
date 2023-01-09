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
<?php
if (isset($_POST["submit"])){
    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $dob = $_POST["dob"];
    $gender = $_POST["gender"];
    $address = $_POST["address"];
    $mail = $_POST["mail"];
    $phone = $_POST["phone"];

    $cust = new Insurance_Management();
    $cust -> register_customer($name,$surname,$dob,$gender,$address,$phone,$mail);
    header("Location: ../index.php");
}
else{
    echo "Something goes WRONG!";
}

?>
  
</body>
</html>