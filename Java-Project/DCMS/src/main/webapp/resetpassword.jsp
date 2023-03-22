<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body style="background: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);
width: 100%;height: 653px; background-size: cover;background-repeat: no-repeat;">

<div class="container-fluid" style="width: 450px; margin-top: 100px;background-color: white;border-radius: 10px; height: 400px">
<br>
<div style="text-align: center"><h3>Reset Password</h3></div>

<p style="background-color: red;color: white;text-align: center;">**Never share your OTP with anyone.**</p>

						<%
						String pasUp = (String)session.getAttribute("msg");
						if(pasUp != null)
						{%>
						
						<div class="text-success text-center" role="alert"><%= pasUp %></div>
						
						<% 	
							session.removeAttribute("msg");
							}
						%>
						
<div style="margin-top: 30px">					
<form action="reset.jsp">
  <div class="mb-3">
    <input type="number" placeholder="Enter OTP Here" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="otp" required>
  </div>
  
  <div class="mb-3">
  
        <input type="password" placeholder="Enter New Password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="password" required>
  </div>
  
  <div class="mb-3">
    <input type="password" placeholder="Re Enter Password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="repassword" required>
  </div>
  
  <div class="text-center pt-3">
  <button type="submit" class="btn btn-primary">Change Password</button>
  <a href="forgot.html" class="btn btn-warning">Back</a>
  </div>
</form>
</div>
</div>
</body>
</html>



<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password Page :</title>
</head>
<body bgcolor="cyan">

	<center>
	<form action="reset.jsp">
		<h3>Reset Password</h3>
		
		<input type="number" name="otp" placeholder="Enter OTP Here"><br><br>
		<input type="password" name="password" placeholder="New Enter Password"><br><br>
		<input type="password" name="repassword" placeholder="Conform New Password"><br><br>
		<input type="submit" value="Change Password">
		
		</form>
	</center>
	
</body>
</html> -->