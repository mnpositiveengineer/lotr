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
	mysqli_report (MYSQLI_REPORT_STRICT);
	require_once "connect.php";

	try
	{
		$connection = new mysqli($host, $db_user, $db_password, $db_name);
		if ($connection -> connect_errno!=0)
		{
			throw new Exception (mysqli_connect_errno());
		}
		
	} catch(Exception $e) {
		
		echo 'Server error. Please try again later.';
		echo '<br>For developer: '.$e;
		exit();
	}
		
		$name = $_POST['name'];
		$id = session_id();
		
		$name = htmlentities($name, ENT_QUOTES, "UTF-8");
		
		$connection -> query("INSERT INTO users (name, id, question) VALUES ('$name', '$id', 1);");
		
		$connection -> close();
		header('Location: question1.php');

} else {
	header('Location: index.html');
}
?>
</body>

</html>