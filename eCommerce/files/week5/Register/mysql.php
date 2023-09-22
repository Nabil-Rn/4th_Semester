<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    
    // Create connection
    global $conn;
    $conn = new mysqli($servername, $username, $password, "labs");
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    function saveClient(){
        global $conn;
        $stmt = $conn->prepare("INSERT INTO `users` (`username`, `password`, `email`, `full_name`) VALUES (?, md5(?), ?,?)");
        $stmt->bind_param("ssss", $username, $pass, $email, $full_name);

        $username = explode('@',$_POST['email'])[0];
        $pass = $_POST['password'];
        $email = $_POST['email'];
        $full_name = $_POST['full_name'];

        $stmt->execute();

        return true;
    }

?>