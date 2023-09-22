<?php
    $servername = "localhost";
    $username = "root";
    $password = "";

    // Create connection
    $conn = new mysqli($servername, $username, $password,"classicmodels");

//var_dump($_POST);

    $sql = "UPDATE employees SET firstName = '" . $_POST['firstName'] 
    . "', lastName = '" . $_POST['lastName'] . "' WHERE employeeNumber=" . $_POST['employeeNumber'];
//    var_dump($sql);
    $result = $conn->query($sql);

    header("Location: employees2.php");
?>