<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Login</title>
    <style>
	
body{
	background:url("image/userlogin.jpg");
	background-repeat: no-repeat;
    background-size: cover;
	font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
	font-size: 16px;
  }
  

.login {
	width: 350px;
	margin: 100px auto;
}

p {
	margin-bottom: 15px;
}

p.error {
	background: red;
	color: white;
	padding: 10px;
}

input {
	display: block;
	width: 100%;
	padding: 5px;
	box-sizing: border-box;
	font-size: 14px;
	
}

button {
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
	background-color: #0000FF;
	border-radius: 5px;
	text-decoration: none;
	font-weight: bold;
	font-size:18px;
	
}
form {
	
	background-color: white;
	opacity: 0.8;
	border-radius: 20px;
	border-style: outset;
	border-color: black;
	box-shadow: 2px 2px 8px #111;
}

</style>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <body>
	<div class="login">

	
		<form action="login" method="post">
			
			<fieldset>
				<legend><b><h1> Log In</h1></b></legend>
				<center><img src="image/login.jpg" style="width:100px; height: 100px;"></center>

				

				<p>
					<b><label for=""><h3>Username</h3></label></b>
					<input type="text" placeholder="username" name="username"> <br>
				</p>

				<p>
					<b><label for=""><h3>Password</h3></label></b>
					<input type ="password" name="password"> <br>
				</p>
						<input type ="checkbox">Remember Credentials
				<p>
					<button type="submit" name="submit1"><b>Log In</b></button>
				</p>

			</fieldset>
			
		
			
		
			
		
		
		
		
		
		
		</form>
	
	
	
	</div>
 <!-- .login -->
</body>
  
</html>
