<?php
    $servername = "localhost";
    $username = "root";
    $password = "";

    // Create connection
    $conn = new mysqli($servername, $username, $password,"classicmodels");



    $sql = "SELECT firstName, lastName from employees where employeeNumber = " . $_GET['id'];
//    var_dump($sql);
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
?>

<form action="update.php" method="POST">
    <input name="firstName" value="<?php echo $row['firstName'];?>">
    <input name="lastName" value="<?php echo $row['lastName'];?>">
    <input type="hidden" name="employeeNumber" value="<?php echo $_GET['id'];?>">

    <input type="submit" value="Update">
</form>