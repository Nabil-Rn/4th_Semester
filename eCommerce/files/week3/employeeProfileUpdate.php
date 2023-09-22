<?php
    $eNum = $_GET["employeeNumber"];
    $servername = "localhost";
    $username = "root";
    $password = "";

    // Create connection
    $conn = new mysqli($servername, $username, $password,"classicmodels");

    // Check connection
    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
    echo "Connected successfully";

    $sql = "SELECT * FROM employees where employeeNumber = '".$eNum."'";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $conn->close();
?>
<html>
    <head>
        <title>Profile</title>
    </head>
    <body>
        <form action="updateEmployee.php" method="POST">
            <input name="employeeNumber" type="hidden" value=<?php echo $row['employeeNumber'];?> >
            <input name="firstName" value=<?php echo $row['firstName'];?>>
            <input name="lastName" value=<?php echo $row['lastName'];?>>

            <input type="submit">
        </form>
    </body>
</html>