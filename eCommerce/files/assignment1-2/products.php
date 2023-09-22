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

    $sql = "SELECT * FROM `products` ORDER BY `model` ASC";
    $result = $conn->query($sql);

?>

<html>
    <head>
        <title>Products List</title>
    </head>
    <body>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Model</th>
                <th>Storage_capacity</th>
                <th>Color</th>
                <th>Price</th>
                <th>Edit</th>
            </tr>
            <?php
                while($row = $result->fetch_assoc()) {
                
                    echo "<tr><td>" . $row["id"]. "</td><td>". $row["model"]. "</td><td>" . $row["storage_capacity"]. "</td><td>" . $row["color"]. "</td><td>" . $row["price"]. "</td>";
                    echo "<td><a href='ProductIDUpdate.php?id=".$row["id"]."'>Edit</a></td>";
                    echo "</tr>";
                
                }
            ?>
        </table>
    </body>
</html>

<?php
    $conn->close();
?>