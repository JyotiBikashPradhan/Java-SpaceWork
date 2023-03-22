package adminLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import adminLogin.db.DBConn;



@WebServlet("/AdminLoginPage")
public class AdminLoginPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("user");
		String password = request.getParameter("password");
		
		
		try {
			Connection cn=DBConn.getConnect();
			PreparedStatement ps=cn.prepareStatement("select * from adminlogin where username=? and password=?");
			ps.setString(1,username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				HttpSession session = request.getSession();
				session.setAttribute("adminuname",username);
				out.println("<h5><center><font color='green'>Login Successfull</font></center></h5>");
				RequestDispatcher rd = request.getRequestDispatcher("adminHome.jsp");
				rd.include(request, response);
			}
			else
			{
				out.println("<h5><center><font color='red'>Login Failed</font></center></h5>");
				RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
				rd.include(request, response);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			out.println("<h5><center><font color='red'>Something Went Wrong !! Please Try Aga</font></center></h5>");
			RequestDispatcher rd = request.getRequestDispatcher("adminLogin.html");
			rd.include(request, response);
			
		}
		
	}

}
