<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/login.css">
    </head>
    <body>

    <?php
				require('db/config.php');
				session_start();
				// If form submitted, insert values into the database.
				if (isset($_POST['username'])){
		
		$username = stripslashes($_REQUEST['username']); // removes backslashes
		$username = mysqli_real_escape_string($conn,$username); //escapes special characters in a string
		$password = stripslashes($_REQUEST['password']);
		$password = mysqli_real_escape_string($conn,$password);
		
	//Checking is user existing in the database or not
        $query = "SELECT * FROM `users` WHERE username='$username' and password='".md5($password)."'";
		$result = mysqli_query($conn,$query) or die(mysql_error());
		$rows = mysqli_num_rows($result);
        if($rows==1){
			$_SESSION['username'] = $username;
			header("Location: index.php"); // Redirect user to index.php
            }else{
				echo "
			<div class='form'>
				<h3>Username/password is incorrect.</h3>
				<br/>Click here to 
				<a href='login.php'>Login</a>
			</div>";
				}
    }else{
?>
        <div class="form">
            <div id="card-content">
                <div id="card-title">
                    <h2>Hotel Glory </h2>
                    <div class="underline-title"></div>
                </div>
            </div>
            <form action="" method="post" name="login">
                <label for="username" style="padding-top:13px">&nbsp;Username</label><br>
                <input
                    type="text"
                    id="username"
                    class="form-content"
                    name="username"
                    placeholder="isi disini"
                    required="required"/>
                <div class="form-border"></div><br>
                <label for="user-password" style="padding-top:22px">&nbsp;Password</label><br>
                <input
                    type="password"
                    id="user-password"
                    class="form-content"
                    name="password"
                    placeholder="isi disini"
                    required="required"/>
                <div class="form-border"></div><br>
                <a href="#">
                    <legend id="forgot-pass">Forgot password?</legend>
                </a>
                <input type="submit" id="submit-btn" name="submit" value="LOGIN"/>
            </form>
            <p>
                <a href="registration.php" id="signup">Don't have account yet?</a>
            </p>
        </div>
        <?php } ?>
    </body>
</html>