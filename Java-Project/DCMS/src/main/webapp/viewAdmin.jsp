<%@ page language="java" import="java.sql.*,adminLogin.db.DBConn" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="css/adminprofile.css" rel='stylesheet' type='text/css' />
</head>
<body style="background: linear-gradient(90deg,pink,skyblue)">

<%
response.setHeader("Cache-Control", "no-catch, no-store, must-revalidate");
response.setHeader("Pragma","no-catch"); //http 1.0
response.setHeader("Expires","0"); //Proxies



if(session!=null)
{
	String userid = (String) session.getAttribute("adminuname");
	
	%>
<center><font color="Blue" size="8">Hey! This Is Admin Profile Page!!</font></center>
<% 
Connection cn = DBConn.getConnect();
PreparedStatement ps = cn.prepareStatement("select *  from adminlogin where username=?");
ps.setString(1, userid);
ResultSet rs = ps.executeQuery();
int i=1;
%>


<!-- <center>
<font size="5">
<table border="5" width="95%">
<tr bgcolor="orange">
<th style="text-align:center">Serial No.</th>
<th style="text-align:center">Username</th>
<th style="text-align:center">Name</th>
<th style="text-align:center">Address</th>
<th style="text-align:center">Gender</th>
<th style="text-align:center">Edit</th>
<th style="text-align:center">Action</th>
</tr> -->
<%while(rs.next())
	{
	%>
        
        
        <div class="profile-main">
            <div class="profile-pic wthree">
                <img src="images/user.png" alt="">
                <h3><%=rs.getString(3) %></h3>
                <div class="w3ls-agile-left">
                    <!---728x90--->
                    <ul class="address">
                        
                        <li>
                            <ul class="address-text">
                                <li><b>Username </b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(1) %></span></li>
                            </ul>
                        </li>
                        
                        <li>
                            <ul class="address-text">
                                <li><b>Password</b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(2) %></span></li>
                            </ul>
                        </li>

                        <li>
                            <ul class="address-text">
                                <li><b>Address</b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(4) %></span></li>
                            </ul>
                        </li>
                        <li>
                            <ul class="address-text">
                                <li><b>Gender</b></li>
                                <li>: </li>
                                <li> <span class="w3"><%=rs.getString(5) %></span></li>
                            </ul>
                        </li>
                        
                        <li>
                            <ul class="address-text">
                                <li><a href="adminEdit.jsp?Username=<%=rs.getString(1)%>" class="btn btn-success btn-sm">Edit Account</a></li>
                                <li><a href="deleteAdmin.jsp?Username=<%=rs.getString(1)%>" class="btn btn-danger btn-sm">Delete Account</a></li>
                            </ul>
                        </li>
            
                    </ul>
                </div>
            </div>
        </div>
        
        
	<%-- <tr color="black">
	<td style="text-align:center"><%=i++ %></td>
	<td style="text-align:center"><%=rs.getString(1) %></td>
	<td style="text-align:center"><%=rs.getString(3) %></td>
	<td style="text-align:center"><%=rs.getString(4) %></td><td><%=rs.getString(5) %></td>
	
	<td style="text-align:center"><a href="adminEdit.jsp?Username=<%=rs.getString(1)%>" class="btn btn-success btn-sm">Edit Account</a></td>
	<td style="text-align:center"><a href="deleteAdmin.jsp?Username=<%=rs.getString(1)%>" class="btn btn-danger btn-sm">Delete Account</a></td>
	</tr> --%>
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
