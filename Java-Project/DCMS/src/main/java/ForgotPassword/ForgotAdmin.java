package ForgotPassword;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import adminLogin.db.DBConn;

@WebServlet("/ForgotAdmin")
public class ForgotAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		String toEmail=request.getParameter("email");
		
		try {
			Connection cn = DBConn.getConnect();
			PreparedStatement ps = cn.prepareStatement("select email from adminlogin where email=?");
			ps.setString(1, toEmail);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				int num =(int)(Math.random()*1000000);
				System.out.println(num);
				
				PreparedStatement ps1 = cn.prepareStatement("update adminlogin set otp=? where email=?");
				ps1.setInt(1, num);
				ps1.setString(2, toEmail);
				
				int i=ps1.executeUpdate();
				if(i<=0){
					out.println("Something Went Wrong...Plz try after some time...");
				}
				else {
				
					String subject="OTP Verification";
					String message="Your One Time Password is "+num+". Please Don't share with anyone.";
									
					String fromEmail = "airindia.airlineservice@gmail.com";
					String username = "airindia.airlineservice@gmail.com";
					String password = "Airindia@123";
					
					SendMail.send(fromEmail,username,password,toEmail,subject,message);
					
					response.sendRedirect("resetpasswordadmin.jsp");
				}
				
			}
			else
			{
				out.println("Please input a valid Email ID");
				RequestDispatcher rd=request.getRequestDispatcher("forgotAdmin.html");
				rd.include(request, response);
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
