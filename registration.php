<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Registration</title>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/login.css">
    </head>
    <body>
    <?php
	require('db/config.php');
    // If form submitted, insert values into the database.
    if (isset($_REQUEST['username'])){
		$username = stripslashes($_REQUEST['username']); // removes backslashes
		$username = mysqli_real_escape_string($conn,$username); //escapes special characters in a string
		$email = stripslashes($_REQUEST['email']);
		$email = mysqli_real_escape_string($conn,$email);
		$password = stripslashes($_REQUEST['password']);
		$password = mysqli_real_escape_string($conn,$password);

		$trn_date = date("Y-m-d H:i:s");
        $query = "INSERT into `users` (username, password, email, trn_date) VALUES ('$username', '".md5($password)."', '$email', '$trn_date')";
        $result = mysqli_query($conn,$query);
        if($result){
            echo "
			<div class='form'>
				<h3>You are registered successfully.</h3>
				<br/>Click here to 
				<a href='login.php'>Login</a>
			</div>";
        }
    }else{
?>
        <div class="form">
            <div id="card-content">
                <div id="card-title">
                    <h1>Registration</h1>
                    <div class="underline-title"></div>
                </div>
            </div>
            <form name="registration" action="" method="post">
                <label for="username" style="padding-top:13px">&nbsp;Username</label><br>
                <input
                    type="text"
                    id="username"
                    class="form-content"
                    name="username"
                    placeholder="isi disini"
                    required="required"/>
                <div class="form-border"></div><br>
                <label for="email" style="padding-top:13px">&nbsp;Email</label><br>
                <input
                    type="email"
                    id="email"
                    class="form-content"
                    name="email"
                    placeholder="isi disini"
                    required="required"/>
                <div class="form-border"></div><br>
                <label for="user-password" style="padding-top:22px">&nbsp;Password</label><br>
                <input
                    type="password"
                    class="form-content"
                    id="user-password"
                    name="password"
                    placeholder="isi disini"
                    required="required"/>
                <div class="form-border"></div>
                <input type="submit" id="submit-btn" name="submit" value="REGISTER"/>
            </form>
        </div>
        <?php } ?>
    </body>
</html>