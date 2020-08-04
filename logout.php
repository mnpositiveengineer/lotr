
<?php
	require_once "connect.php";

	$connection = @new mysqli($host, $db_user, $db_password, $db_name);

	if($connection -> connect_errno != 0)
	{
		echo "Error: ".$connection -> connect_errno;
	} else {
		
		session_start();
		$id = session_id();
		
		if ($result = $connection -> query("SELECT * FROM users WHERE id='$id';")) 
		{
			$isUserInDatabase = mysqli_num_rows($result);
			
			if ($isUserInDatabase == 1) 
			{
				$connection -> query("DELETE FROM user_question_hero WHERE user_id='$id'");
				$connection -> query("DELETE FROM users WHERE id='$id'");
				$result -> close();
				$connection -> close();
				header('Location: index.html');
			}
		} else {
				$result -> close();
				$connection -> close();
				header('Location: index.html');
				exit();
		}	
	}
?>
