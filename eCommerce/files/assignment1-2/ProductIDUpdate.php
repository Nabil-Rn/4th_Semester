<?php
    $id = $_GET["id"];
    $servername = "localhost";
    $username = "root";
    $password = "";

    // Create connection
    $conn = new mysqli($servername, $username, $password,"project");

    // Check connection
    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
    echo "Connected successfully";

    $sql = "SELECT * FROM products where id = '".$id."' ";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $conn->close();
?>
<html>
    <head>
        <title>Product</title>
    </head>
    <body>
        <form action="updateproduct.php" method="POST">
            <input name="id" type="hidden" value=<?php echo $row['id'];?> >
            <input name="model" value=<?php echo $row['model'];?> >
            <input name="storage_capacity" value=<?php echo $row['storage_capacity'];?>>
            <input name="color" value=<?php echo $row['color'];?>>
            <input name="price" value=<?php echo $row['price'];?>>
            <input type="submit">
        </form>
    </body>
</html>