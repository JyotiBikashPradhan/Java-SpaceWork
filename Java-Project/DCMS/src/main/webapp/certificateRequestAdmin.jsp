<%@ page language="java" import="java.sql.*, adminLogin.db.DBConn" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background: linear-gradient(90deg,pink,skyblue)">

<%
response.setHeader("Cache-Control", "no-catch, no-store, must-revalidate");
response.setHeader("Pragma","no-catch"); //http 1.0
response.setHeader("Expires","0"); //Proxies



HttpSession sessionUser = request.getSession();

if(sessionUser!=null)
{
	String userid = (String) session.getAttribute("username");
	%>

<% 
Connection cn = DBConn.getConnect();
PreparedStatement ps = cn.prepareStatement("select * from certificate");
ResultSet rs = ps.executeQuery();
int i=1;
%>


<center>
<font size="5">
<table border="5" width="95%">
<h1>View Certificate</h1>
<tr bgcolor="orange"><th style="text-align:center">Serial No.</th><th style="text-align:center">User name</th><th style="text-align:center">name</th><th style="text-align:center">Certificate</th><th style="text-align:center">Approve</th><th style="text-align:center">Reject</th></tr>
<%while(rs.next())
	{
	String s1=rs.getString(3);
	String s2=rs.getString(1);
	
	%>
	<tr color="black">
	<td style="text-align:center"><%=i++ %></td>
	<td style="text-align:center"><%=rs.getString(3) %></td>
	<td style="text-align:center"><%=rs.getString(1) %></td>
	<td style="text-align:center"><%=rs.getString(2) %></td>
	
	<td style="text-align:center"><a href="approve.jsp?userdata1=<%=s1%>&userdata2=<%=s2%>&userdata3=<%=rs.getString(2)%>"   class="btn btn-success btn-sm">Approve</a> </td>
	<td style="text-align:center"><a href="reject.jsp?userdata1=<%=s1%>&userdata2=<%=s2%>&userdata3=<%=rs.getString(2)%>"    class="btn btn-danger btn-sm">Reject</a> </td>
	</tr>
	<!-- PDRS?param1="+lat+"?param2="+lon); -->
	
	

	
	<%
	}
}
else
{
	response.sendRedirect("adminLogin.jsp");
}
%>
</table>
<br><br><br>
	<pre><center><a href="adminLogout.jsp" class="btn btn-danger btn-sm">Logout</a>  <a href="adminHome.jsp" class="btn btn-primary btn-sm">Admin Home Page</a></center>  </pre>
</font>
</center>


</body>
</html>