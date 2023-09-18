<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db = "Labs";

    // Create connection
    $conn = new mysqli($servername, $username, $password,$db);

    // Check connection
    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
    echo "Connected successfully";

    $sql = "SELECT 'id' FROM 'users' where username = .$_POST $user And "

?>

<html>
    <head>
    </head>
    <body>
    <h1>Login</h1>
        <form action="check.php" method="POST">
                <input type="text" id="username" name="username" required> 
                <br>
                <input type="password" id="password" name="password" required>
                <br>
            <button type="submit" class="btn">Login</button>
        </form>

    </body>
</html>