<%@ page language="java" import="java.sql.*,adminLogin.db.DBConn" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background: linear-gradient(to right top, #b0c8ed, #73d6f8, #31e3e0, #66e7a5, #b9e15e);">
<%
response.setHeader("Cache-Control", "no-catch, no-store, must-revalidate");
response.setHeader("Pragma","no-catch"); //http 1.0
response.setHeader("Expires","0"); //Proxies



if(session!=null)
{
	String userid = (String) session.getAttribute("adminuname");
	
	%>
<%

Connection cn = DBConn.getConnect();
PreparedStatement ps = cn.prepareStatement("select *  from adminLogin where username=(?)");
ps.setString(1, userid);
ResultSet rs = ps.executeQuery();
String male="",female="";
if(rs.next())
{
	if(rs.getString(5).equalsIgnoreCase("male"))
	{
		male="checked";
	}else{
		female="checked";
	}
%>


<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-primary">
					<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
					<h4>Edit Details</h4>
					</div>
					
					
					<div class="card-body">
						<form action="AdminEdit" method="post">

							<div class="form-group">

								<div class="input-group mt-3">

									<div class="input-group-prepend">

										<div class="input-group-text">

											<i class="fa fa-user" aria-hidden="true"></i>

										</div>

									</div>

									<input type="text" class="form-control" id="exampleInputEmail1" name="username"
										aria-describedby="emailHelp" value="<%=rs.getString(1) %>" required>

								</div>
							</div>

							<div class="form-group">

								<div class="input-group mt-3">

									<div class="input-group-prepend">

										<div class="input-group-text">

											<i class="fa fa-key" aria-hidden="true"></i>

										</div>

									</div>

									<input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp" name="password"
										value="<%=rs.getString(2) %>" required>

								</div>
							</div>
							
							<div class="form-group">

								<div class="input-group mt-3">

									<div class="input-group-prepend">

										<div class="input-group-text">

											<i class="fa fa-user-circle" aria-hidden="true"></i>

										</div>

									</div>

									<input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp" name="name"
										value="<%=rs.getString(3) %>" required>

								</div>
							</div>


							<div class="form-group">

								<div class="input-group mt-3">

									<div class="input-group-prepend">

										<div class="input-group-text">

											<i class="fa fa-map-marker" aria-hidden="true"></i>

										</div>

									</div>

									<input type="text" class="form-control"
										id="exampleInputPassword1" aria-describedby="emailHelp" name="address"
										value="<%=rs.getString(4) %>" required>

								</div>
							</div>
							
							<div class="form-check">
									<input type="radio" id="flexRadioDefault1" class="form-check-input" 
									name="gender" value="Male"<%=male %>> 
									<label class="form-check-label" for="flexRadioDefault1">Male</label> 
							</div>
								
							<div class="form-check mb-3">		
									<input type="radio" id="flexRadioDefault2" class="form-check-input"
									name="gender" value="Female" <%=female %>>
									<label class="form-check-label" for="flexRadioDefault2">Female</label>

							</div>
							

							<button type="submit" class="btn btn-primary badge-pill btn-block">Modify</button>
							<a href="adminHome.jsp" class="btn btn-warning badge-pill btn-block">Back To Home Page</a>
							<a href="adminLogout.jsp" class="btn btn-danger badge-pill btn-block">Logout</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<%-- <center><h2><font color="blue">Edit Your Profile</font></h2>
<font size="5">
	<form action="AdminEdit" method="post">
	<pre>
	Your UserName      : <input type="text" name="username"  readonly placeholder="Enter username" value="<%=rs.getString(1) %>"><br><br>
	Edit Your Password     : <input type="text" name="password" placeholder="Enter Password" value="<%=rs.getString(2) %>"><br><br>
	Edit Your Name     : <input type="text" name="name" placeholder="Enter Name" value="<%=rs.getString(3) %>"><br><br>
	Edit Your Address  : <input type="text" name="address" placeholder="Enter Address" value="<%=rs.getString(4) %>"><br><br>
	Select Your Gender : <input type="radio" name="gender"  value="Male"<%=male %>> Male <input type="radio" name="gender"  value="Female" <%=female %>>Female
					     
	<br><br>
	<input type="submit" value="Edit">
	<br><br><br><br> --%>
	
	<!-- </pre>
	</form>
</font>
</center> -->
<% 
}
}
else
{
	response.sendRedirect("adminLogin.jsp");
}
%>
</body>
</html>