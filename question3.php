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
	mysqli_report (MYSQLI_REPORT_STRICT);
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

		session_start();
		$id = session_id();
		
		
		if ($result = $connection -> query("SELECT * FROM users WHERE id='$id';")) 
		{
			
			$isUserInDatabase = mysqli_num_rows($result);
			
			if ($isUserInDatabase == 1) 
			{
				if((isset($_POST['answer']))){
					$question_answer = $_POST['answer'];
					$connection -> query("UPDATE users SET question = 3 WHERE id='$id';");
					$connection -> query("INSERT INTO user_question_hero (user_id, question_id, hero_id) VALUES ('$id', 2, '$question_answer');");
				}
				$result -> close();
				$new_result = $connection -> query("SELECT * FROM users WHERE id='$id';");
				$row = $new_result -> fetch_assoc();
				$question = $row['question'];
				if ($question == 3) 
				{
					$new_result -> close();
					$result_question = $connection -> query("SELECT * FROM questions WHERE id=3");
					$row_question = $result_question -> fetch_assoc();
					$question_from_db = $row_question ['question'];
					$AnswerA = $row_question ['answerA'];
					$AnswerB = $row_question ['answerB'];
					$AnswerC = $row_question ['answerC'];
					$AnswerD = $row_question ['answerD'];
					$result_question -> close();
					$connection -> close();
									
				} else if ($question == 0)  {
					$result -> close();
					$connection -> close();
					header('Location: end.php');
					exit();
				} else {
					$result -> close();
					$connection -> close();
					header('Location: question'.$question.'.php');
					exit();
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
?>	

	<main>
		<div class='container-fluid p-0 my-auto'>
			<div class='container p-0 my-auto'>
				<h1><?php echo ($question_from_db)?></h1>
				<form method='post' action='question4.php'>
					<div class='form-group'>
						<label for='answerA'><?php echo ($AnswerA)?></label>
						<input type='radio' name='answer' value='1' class='form-control' id='answerA'/>
					</div>
					<div class='form-group'>
						<label for='answerB'><?php echo ($AnswerB)?></label>
						<input type='radio' name='answer' value='2' class='form-control' id='answerB'/>
					</div>
					<div class='form-group'>
						<label for='answerC'><?php echo ($AnswerC)?></label>
						<input type='radio' name='answer' value='3' class='form-control' id='answerC'/>
					</div>
					<div class='form-group'>
						<label for='answerD'><?php echo ($AnswerD)?></label>
						<input type='radio' name='answer' value='4' class='form-control' id='answerD'/>
					</div>										
					<input type="submit" value="Next"/>
				</form>
			</div>
		</div>
	</main>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="js/bootstrap.min.js"/></script>
</body>

</html>