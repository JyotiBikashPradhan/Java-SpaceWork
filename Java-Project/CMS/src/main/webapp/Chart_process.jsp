<%@ page language="java" import="java.sql.*" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dbcon.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chat Process page</title>
</head>
<body>
<% String s1=request.getParameter("chart");
String s5=(String)session.getAttribute("x1");
  
   
   try{
	   Connection cn=D.getcon();
	   PreparedStatement pres=cn.prepareStatement(" insert into chart_meng (name, message) values (?,?) ");
	   pres.setString(1,s5);
	   pres.setString(2,s1);
	   
	   int i=pres.executeUpdate();
	   if(i>0){
			out.println("<html><body style='background-image: url(images/ch.jpg); background-repeat:no-repeat'></body></html>");
			out.println("<center><h1 style='color:blue'>We Recieve Your Message</h1></center>");
			out.println("<center><h3 style='color:green'>We Will Shortly Reply To Your Message</h3></center><br/><br/>");
			out.println("<center> <a href='Logout_Process.jsp' style=' border-radius:20px;border: none;color: white;padding: 20px; text-align: center;background-color:#d1de14;cursor: pointer;font-size: 20px;text-decoration: none ' >Logout</a> <a href='rights_citizen.jsp' style=' border: none;color: white;padding: 20px; text-align: center;background-color:#14ded4;cursor: pointer;font-size: 20px;border-radius:20px;text-decoration: none'>Home</a></center>");
					  
					  
	   }
	   else{
		   out.println(" Message Not Saved");
	   }
	   
   }catch(Exception ee){
	 ee.printStackTrace();  
   }
%>
</body>
</html>