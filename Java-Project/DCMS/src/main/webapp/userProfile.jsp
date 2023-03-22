<%@ page language="java" import="java.sql.*,adminLogin.db.DBConn" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="css/adminprofile.css" rel='stylesheet' type='text/css' />
</head>
<body style="background: linear-gradient(90deg,pink,skyblue)">

<% 
response.setHeader("Cache-Control", "no-catch, no-store, must-revalidate");
response.setHeader("Pragma","no-catch"); //http 1.0
response.setHeader("Expires","0"); //Proxies

HttpSession sessionUser = request.getSession();

if(sessionUser!=null)
{
	String userid = (String) sessionUser.getAttribute("username");

%>
<center><font color="Blue" size="8">Hey! <%=userid %> This Is User Profile Page!!</font></center>
<% 
Connection cn = DBConn.getConnect();
PreparedStatement ps = cn.prepareStatement("select *  from user_registration where username=?");
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
<th style="text-align:center">Action</th></tr> -->
<%while(rs.next())
	{
	%>
	
	 
        <div class="profile-main">
            <div class="profile-pic wthree">
                <img src="images/user.png" alt="">
                <h3><%=rs.getString(2) %></h3>
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
                                <li> <span class="w3"><%=rs.getString(3) %></span></li>
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
                            	<li><a href="userEdit.jsp?Username=<%=rs.getString(1)%>" class="btn btn-success btn-sm">Edit Account</a></li>
                                <li><a href="deleteUser.jsp?Username=<%=rs.getString(1)%>" class="btn btn-danger btn-sm">Delete Account</a></li>
                            </ul>
                        </li>
            
                    </ul>
                </div>
            </div>
        </div>
        
        
	<%-- <tr color="black">
	<td style="text-align:center"><%=i++ %></td>
	<td style="text-align:center"><%=rs.getString(1) %></td>
	<td style="text-align:center"><%=rs.getString(2) %></td>
	<td style="text-align:center"><%=rs.getString(4) %></td>
	<td style="text-align:center"><%=rs.getString(5) %></td>
	
	<td style="text-align:center"><a href="deleteUser.jsp?Username=<%=rs.getString(3)%>" class="btn btn-danger btn-sm">Delete Account</a></td> --%>
	
	<%
	}
}
else
{
	response.sendRedirect("userLogin.jsp");
}
%>
</table>
<br><br><br>
	<pre><center><a href="userLogout.jsp" class="btn btn-danger btn-sm">Logout</a>  <a href="userHomePage.jsp" class="btn btn-primary btn-sm">User Home Page</a></center>  </pre>
</font>
</center>


</body>
</html>