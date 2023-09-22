<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    
    // Create connection
    global $conn;
    $conn = new mysqli($servername, $username, $password, "classicmodels");
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    function getFilters(){
        global $conn;
        $sql = "SELECT distinct `productLine` FROM `products` WHERE 1;";
 
        $result = $conn->query($sql);
        $filters = array();

        while($row = $result->fetch_assoc()) {
            array_push($filters, $row['productLine']);
            
        }

        return $filters;
    }

    function getSearchResults($lookup){
        global $conn;
        $sql = "SELECT `productName`, `productLine`, `productDescription` FROM `products` WHERE `productName` LIKE '%".$lookup."%'";
 
        $result = $conn->query($sql);
        $products = array();

        while($row = $result->fetch_assoc()) {
            array_push($products, $row);
            
        }

        return $products;

    }


    function getFilterResults($filter){
        global $conn;
        $sql = "SELECT `productName`, `productLine`, `productDescription` FROM `products` WHERE `productLine` like '".$filter."';";
 
        $result = $conn->query($sql);
        $products = array();

        while($row = $result->fetch_assoc()) {
            array_push($products, $row);
            
        }

        return $products;

    }

?>