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
   
    echo "Connected successfully";

    $sql = "SELECT * FROM `employees` ORDER BY `lastName` ASC";
    $result = $conn->query($sql);

?>

<html>
    <head>
        <title>Employee List</title>
    </head>
    <body>
        <ul>
            <?php
                while($row = $result->fetch_assoc()) {
                
                    echo "<li>" . $row["employeeNumber"]. " - " . $row["lastName"]. ", " . $row["firstName"]. " <a href='edit.php?id=".$row['employeeNumber']."'>edit</a></li>";
                
                }
            ?>
        </ul>
    </body>
</html>

<?php
    $conn->close();
?>