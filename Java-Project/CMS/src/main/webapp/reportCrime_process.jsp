<%@ page language="java" import="java.sql.* "   session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dbcon.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report File Page</title>
</head>
<body>
<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
String s5=(String)session.getAttribute("x1");

try{
	Connection cn=D.getcon();

PreparedStatement pres=cn.prepareStatement(" insert into report_crime (name,date,address,criime_reason,register_by) values (?,?,?,?,?) ");
pres.setString(1,s1);
pres.setString(2,s2);
pres.setString(3,s3);
pres.setString(4,s4);
pres.setString(5,s5);

int i=pres.executeUpdate();
if(i>0){
	out.println("<html><body style='background-image: url(images/po.jpg); background-repeat:no-repeat'></body></html>");
out.println("<center><h1 style='color:blue'>Sucessfully Registered your Report</h1></center>");
out.println("<center><h3 style='color:green'>We Will Shortly Resolve This Issue</h3></center><br/><br/>");
out.println("<center><a href='Logout_Process.jsp' style=' border: none;color: white;padding: 8px; text-align: center;background-color:#d1de14;cursor: pointer;font-size: 20px ' >Logout</a> <a href='rights_citizen.jsp' style=' border: none;color: white;padding: 8px; text-align: center;background-color:#14ded4;cursor: pointer;font-size: 20px'>Home</a></center>");
		  
		  
		
		 
		 
		 
		 
}else{
	out.println("<center>Sorry!!Some Error Arise</center>");	
}}catch(Exception ee){
	ee.printStackTrace();
}


%>
</body>
</html>