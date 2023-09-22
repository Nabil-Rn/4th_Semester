<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, "classicmodels");
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


    $sql = "SELECT * FROM `products` WHERE `productName` LIKE '%".$_REQUEST["lookup"]."%'";
    $result = $conn->query($sql);

    if($result->num_rows > 0) {
        echo '<div class="container"><table class="table table-striped"><thead><tr><th>Product Name</th><th>Product Line</th><th>Description</th></tr></thead><tbody>';

       // output data of each row
        while($row = $result->fetch_assoc()) {

            echo '<tr>
            <td>'.$row["productName"].'</td>
            <td>'.$row["productLine"].'</td>
            <td>'.$row["productDescription"].'</td>
          </tr>';
        }
        echo '</tbody></table></div>';
    }else{
        echo "0 results";
    }
?>

