<?php
    $servername = "localhost";
    $username = "root";
    $password = "";

    // Create connection
    $conn = new mysqli($servername, $username, $password,"classicmodels");

    // Check connection
    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
//    echo "Connected successfully";

    $sql = "UPDATE employees SET `firstName`='" . $_POST['firstName'] . "', `lastName`='".$_POST['lastName']."' WHERE employeeNumber=".$_POST['employeeNumber'];
    $result = $conn->query($sql);
    $conn->close();

    header('Location: employees.php');
?>