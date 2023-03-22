<%@ page language="java" import="java.sql.*" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dbcon.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String s1=request.getParameter("t1");
   String s2=request.getParameter("t2");
   String s3=request.getParameter("t3");
   String s4=request.getParameter("t4");
   String s5=request.getParameter("t5");
   String s6=request.getParameter("t6");
   
   try{
	   Connection cn=D.getcon();
	   PreparedStatement pres=cn.prepareStatement(" insert into register_user ( name, mobile_no, Addhar_no, address, email_id, password) values (?,?,?,?,?,?) ");
	   pres.setString(1,s1);
	   pres.setString(2,s2);
	   pres.setString(3,s3);
	   pres.setString(4,s4);
	   pres.setString(5,s5);
	   pres.setString(6,s6);
	   int i=pres.executeUpdate();
	   if(i>0){
		   
		   out.println("<center><font color='green' size='5'><h1>Registeration successfully</h1></font></center>");
			RequestDispatcher rd=request.getRequestDispatcher("index1.jsp");
			rd.include(request, response);
		  
	   }
	   else{
		   out.println(" Something Went Wrong !!");
	   }
	   
   }catch(Exception ee){
	 ee.printStackTrace();  
   }
%>
</body>
</html>