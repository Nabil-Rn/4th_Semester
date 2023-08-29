
<style>
    h2{
        color: red;
    }
</style>

<h2> Login result information</h2>


<?php

    $email = $_POST["email"];
    $pass = $_POST['pswd'];


    //echo $email . $pass;

    echo "$email $pass<br>";
    echo '$email $pass';

?>