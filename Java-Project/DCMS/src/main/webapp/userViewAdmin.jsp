<%@ page language="java" import="java.sql.*,adminLogin.db.DBConn" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View User Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background: linear-gradient(90deg,pink,skyblue)">
<%
response.setHeader("Cache-Control", "no-catch, no-store, must-revalidate");
response.setHeader("Pragma","no-catch"); //http 1.0
response.setHeader("Expires","0"); //Proxies



if(session!=null)
{
	String userid = (String) session.getAttribute("username");
	
	%>
<center><font color="Blue" size="8">Hey! Admin This Is User View Page!!</font></center>
<% 
Connection cn = DBConn.getConnect();
PreparedStatement ps = cn.prepareStatement("select *  from user_registration");

ResultSet rs = ps.executeQuery();



int i=1;


%>


<center>
<font size="5">
<table border="5" width="95%">
<tr bgcolor="orange"><th style="text-align:center">Serial No.</th><th style="text-align:center">Username</th><th style="text-align:center">Name</th><th style="text-align:center">Address</th><th style="text-align:center">Gender</th><th style="text-align:center">Take Action</th></tr>
<%while(rs.next())
	{
	%>
	<tr color="black"><td style="text-align:center"><%=i++ %></td><td style="text-align:center"><%=rs.getString(1) %></td><td style="text-align:center"><%=rs.getString(2) %></td><td style="text-align:center"><%=rs.getString(4) %></td><td style="text-align:center"><%=rs.getString(5) %></td>
	
	
	<td style="text-align:center"><a href="deleteAdmin.jsp?Username=<%=rs.getString(1)%>" class="btn btn-danger btn-sm">Delete Account</a></td>
	</tr>
	
	<%
	}
}
else
{
	RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
	rd.forward(request, response);
}
%>
</table>
<br><br><br>
	<pre><center><a href="adminLogout.jsp" class="btn btn-danger btn-sm">Logout</a>  <a href="adminHome.jsp" class="btn btn-primary btn-sm">Admin Home Page</a></center>  </pre>
</font>
</center>

</body>
</html>