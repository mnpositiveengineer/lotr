<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="utf-8"/>
</head>	
</head>
<body>
<?php

if((isset($_POST['name']))){

	session_start();

	require_once "connect.php";

	$connection = @new mysqli($host, $db_user, $db_password, $db_name);

	if($connection -> connect_errno != 0)
	{
		echo "Error: ".$connection -> connect_errno;
	} else {
		$name = $_POST['name'];
		$id = session_id();
		
		$name = htmlentities($name, ENT_QUOTES, "UTF-8");
		
		$connection -> query("INSERT INTO users (name, id, question) VALUES ('$name', '$id', 1);");
		
		header('Location: question1.php');
		
		$connection -> close();
	}

} else {
	header('Location: index.html');
}
?>
</body>

</html>