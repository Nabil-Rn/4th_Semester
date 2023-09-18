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
        <style>
            table{
                width:550px;
            }
            th:nth-child(1) {
                width: 30%;
            }
            </style>
    </head>
    <body>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Name</th>
            </tr>
            <?php
                while($row = $result->fetch_assoc()) {
                
                    echo "<tr><td>" . $row["employeeNumber"]. "</td><td>" . $row["lastName"]. ", " . $row["firstName"]. "</td>";
                    echo "<td><a href='employeeProfileUpdate.php?employeeNumber=".$row["employeeNumber"]."'>Edit</a></td>";
                    echo "</tr>";
                
                }
            ?>
        </table>
    </body>
</html>

<?php
    $conn->close();
?>