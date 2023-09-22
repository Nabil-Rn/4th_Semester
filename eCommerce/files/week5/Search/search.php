<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Search</title>
	<?php
		include_once "requires.php";
	?>
</head>
<body>
	<?php
		include_once  "menu.php";
	?>


<?php
	if(isset($_REQUEST["lookup"])){
		include_once  "results2.php";
	}
	elseif(isset($_REQUEST["filter"])){
		include_once  "results2.php";
	}
	else{
		echo "Please perform a search";
	}
?>




</body>
</html>