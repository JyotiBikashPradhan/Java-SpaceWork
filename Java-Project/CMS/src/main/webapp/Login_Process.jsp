<%@ page language="java" import="java.sql.* "   session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dbcon.D" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("email");
String s2=request.getParameter("pass");
session.setAttribute("x1",s1);
try{
	
Connection cn=D.getcon();
PreparedStatement pres=cn.prepareStatement("select * from register_user where email_id=? AND password=? ");
pres.setString(1,s1);
pres.setString(2,s2);

ResultSet res=pres.executeQuery();

if(s1.equalsIgnoreCase("admin") && s2.equalsIgnoreCase("admin"))
{
	response.sendRedirect("admin_rights.jsp");	
}
else if(res.next()){

	response.sendRedirect("rights_citizen.jsp");
}else{
	out.println("<center>You Have Entered a wrong Email and Password </center> ");
	out.println("<center> <a href='user_register.jsp' >Register Here</a> </center>");
}

}
catch(Exception ee){
	ee.printStackTrace();
}

%>
</body>
</html>