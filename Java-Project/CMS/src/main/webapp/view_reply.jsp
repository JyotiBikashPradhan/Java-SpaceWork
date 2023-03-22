<%@ page language="java" import="java.sql.*" session="true"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.D"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reply Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/view_reply.css">
</head>
<style>
body {
	background-image: url("images/blind.jpg");
	background-size: cover;
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
}

.btn {
	/* Green */
	border: none;
	color: white;
	padding: 10px 30px;
	border-radius: 12px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 20px;
	margin: 4px 2px;
	cursor: pointer;
	background-color: #a534eb;
}

.btn2 {
	background-color: #d1de14;
	float: right;
}

.btn3 {
	background-color: green;
}

.btn4 {
	background-color: #14ded4;
	float: left;
}

h1 {
	text-shadow: 2px 2px red;
}
</style>
<body>
<div style="height: 70px">
	<a href="rights_citizen.jsp" class="btn btn4">Home</a>
	<a href="Logout_Process.jsp" class="btn btn2">Logout</a>
</div>
	<%
	String s5 = (String) session.getAttribute("x1");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn = D.getcon();
		PreparedStatement pres = cn.prepareStatement("select * from chart_meng where name=? ");
		pres.setString(1, s5);
		ResultSet ress = pres.executeQuery();
	%>

	<%
	while (ress.next()) {
		String s1 = ress.getString(4);
	%>

	<%
	if (!s1.equals("1")) {
	%>

	<div class="container">
		<h1 style="color: green">
			Reply:<%=ress.getString(4)%>
		</h1>
		<h2>
			Message:<%=ress.getString(3)%></h2>
		<h3>Reply By:ADMIN</h3>
		<a href="chart_meng.jsp" class="btn btn3" style="float: right">Reply</a>
		<br>
	</div>
	<%
	} else {
	%>
	<div class="container">
	<h2>
		Message:<%=ress.getString(3)%></h2>
	<h3 style="color: red">Reply pending</h3>
	<a href="chart_meng.jsp" class="btn btn3" style="float: right">Reply</a>
	<br>
	</div>
	<%
	}
	}
	%>


	<%
	} catch (Exception ee) {
	ee.printStackTrace();

	}
	%>
</body>
</html>
