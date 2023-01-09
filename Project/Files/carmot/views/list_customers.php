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
    <h1>List of Customers</h1>
</header>
<?php
$cust = new Insurance_Management();
$customers = $cust -> select_customers();
?>

<div class = table_list>
   <table width=75% border='0' align='center' >
        <tr>
        <th>Name</th>
        <th>Surname</th>
        <th class="address">Address</th>
        <th>Phone</th>
        <th>email</th>
        </tr>
    <?php
while($customer = $customers->fetch(PDO::FETCH_ASSOC)){
    $name=$customer['Name'];
    $surname = $customer['Surname'];
    $dob= $customer['Date_of_birth'];
    $phone= $customer['Telephone'];
    $email= $customer['Email'];
    $address= $customer['Address'];

    echo "<tr>";
    echo "<td>".$name."</td>";
    echo "<td>".$surname."</td>";
    echo "<td>".$address."</td>";
    echo "<td>".$phone."</td>";
    echo "<td>".$email."</td>";    
    echo "</tr>";

}
?>
</table>
<a href="../index.php"><button type="button">Home</button></a>
</div>
  
</body>
</html>