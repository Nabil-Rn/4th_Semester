<?php
    $servername = "localhost";
    $username = "root";
    $password = "";

    // Create connection
    $conn = new mysqli($servername, $username, $password,"project");

    // Check connection
    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
//    echo "Connected successfully";

$sql = "UPDATE products SET `model` = '" . $_POST['model'] . "', `storage_capacity` = '" . $_POST['storage_capacity'] . "', `price` = '" . $_POST['price'] . "', `color` = '" . $_POST['color'] . "' WHERE id = '" . $_POST['id'] . "'";
    $result = $conn->query($sql);
    $conn->close();

    header('Location: products.php');
?>