<?php

var_dump($_REQUEST);
var_dump($_FILES);

$targetDirectory = "uploads/"; 
$targetFile = $targetDirectory . basename($_FILES["file"]["name"]);
$uploadOk = true; 

if(isset($_POST["submit"])) {
    $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif") {
        echo "Sorry, only JPG, JPEG, PNG, and GIF files are allowed.";
        $uploadOk = false;
    }
}

// Check if file already exists
if (file_exists($targetFile)) {
    echo "Sorry, the file already exists.";
    $uploadOk = false;
}

// Check if the file was successfully uploaded
if (!$uploadOk) {
    echo "Sorry, your file was not uploaded.";
} else {
    if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
        echo "The file " . basename($_FILES["file"]["name"]) . " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}
?>
