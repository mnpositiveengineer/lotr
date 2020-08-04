<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Who are you from LOTR</title>
	<link rel = "icon" type = "image/png" href = "img/logo.png">
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<meta http-equiv="x-ua-compatible" content="IE-edge, chrome=1"/>
	<meta name="author" content="Michał Nowak"/>
	<!--[if lt IE 9]>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
	<link rel="stylesheet" href="style.css" type="text/css"/>
	<link rel="stylesheet" href="fontello/css/fontello.css" type="text/css"/>
</head>	
</head>
<body>
<?php

	require_once "connect.php";

	$connection = @new mysqli($host, $db_user, $db_password, $db_name);

	if($connection -> connect_errno != 0)
	{
		echo "Error: ".$connection -> connect_errno;
		exit();
		
	} else {
		
		session_start();
		$id = session_id();
		
		
		if ($result = $connection -> query("SELECT * FROM users WHERE id='$id';")) 
		{
			
			$isUserInDatabase = mysqli_num_rows($result);
			$result = $connection -> query("SELECT * FROM users WHERE id='$id';");
			$row = $result -> fetch_assoc();
			$question = $row['question'];
			
			if ($isUserInDatabase == 1) 
			{
				if((isset($_POST['answer']))){
					$question_answer = $_POST['answer'];
					$connection -> query("UPDATE users SET question = 0 WHERE id='$id';");
					$connection -> query("INSERT INTO user_question_hero (user_id, question_id, hero_id) VALUES ('$id', 10, '$question_answer');");
					$hero_view = $connection-> query("SELECT a.hero_id, a.amount, h.name, h.description FROM heros h JOIN (SELECT count(*) as amount, hero_id FROM user_question_hero GROUP BY hero_id) a ON h.id = a.hero_id ORDER BY a.amount DESC");
					$hero_row = $hero_view -> fetch_assoc();
					$hero_id = $hero_row['hero_id'];
					$hero_name = $hero_row['name'];
					$hero_description = $hero_row['description'];
					$connection -> query("UPDATE users SET hero_id = '$hero_id' WHERE id='$id';");
					$hero_view -> close();
					$result -> close();
					$connection -> close();		
				} else if ($question!=0) {
					$result -> close();
					$connection -> close();	
					header('Location: question'.$question.'.php');
					exit();		
				} else {
					$hero_view = $connection -> query("SELECT h.name, h.description FROM heros h JOIN users u ON u.hero_id = h.id WHERE u.id='$id';");
					$hero_row = $hero_view -> fetch_assoc();
					$hero_name = $hero_row['name'];
					$hero_description = $hero_row['description'];
					$hero_view -> close();
					$result -> close();
					$connection -> close();		
					}

			} else {
				$result -> close();
				$connection -> close();
				header('Location: index.html');
				exit();
			}
		} else {
		echo "Wrong SQL statement";
		$connection -> close();
		exit();
		}
	}
?>	

	<main>
	<div class="container-fluid p-0 my-auto">
	<div class="container p-0 my-auto">
		<h1>YOU ARE <?php echo ($hero_name)?></h1>
		<p><?php echo ($hero_description)?></p>
		<a href="logout.php">Delete your data and return to main page</a>
	</div>
	</div>
	</main>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="js/bootstrap.min.js"/></script>
</body>

</html>