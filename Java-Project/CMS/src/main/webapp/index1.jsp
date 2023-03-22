<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Here </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	
        <div class="aa">
	<h2>Login Here</h2>
            
	<form action="Login_Process.jsp" method="post" id="myform">	

	<input type="text" placeholder="Enter Username" id="uname" name="email"><br><br>

	<input type="password" placeholder="Enter Password" id="password" name="pass"><br><br>
	
		<div class="text-center mt-3">
        <input type="submit"  value="Login" class="btn btn-success"><br><br><br>
     	</div>
        <label id="link">
        Have not any Account ? <a href="user_register.jsp" style="text-decoration: none;">Signup</a>
        </label>
        <div style="text-align: center;">
		<a href="forgot.html" style="text-decoration: none;">Forgot Password?</a>
		</div>
	</form>
        </div>
	
	</body>


</html>



		
	