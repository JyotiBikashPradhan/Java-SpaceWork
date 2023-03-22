<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Page</title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
</head>
<style>
body {
 background-image: url("images/blind.jpg");
background-size:cover;
background-attachment:fixed;
background-position:center;
background-repeat:no-repeat;
}
     .btn {
  border: none;
  color: black;
  padding: 20px;
  border-radius: 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 4px 2px;
  cursor: pointer;
  background-color:#9ef542;
  margin-top:50px;
}

.btn:hover {
	color:white;
	background: green;
    opacity: 0.7;
}
</style>
<body>

<%

session.invalidate();

%>
 <center><h1 style="color:#1ce8d4;">You Have Sucessfully Logged Out!!</h1><h2 style="color:#15b7e8">Thank You For Visiting Us..</h2>
 
<a href="index1.jsp"  class="btn btn1">Login</a></center>
</body>
</html>