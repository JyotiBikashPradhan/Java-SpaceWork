package adminLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminLogin.db.DBConn;


@WebServlet("/AdminRegistration")
public class AdminRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		
		try {
			Connection cn=DBConn.getConnect();
			PreparedStatement ps=cn.prepareStatement("insert into adminlogin(username, password, name, address, gender, email)"+ "VALUES (?, ?, ?, ?, ?, ?)");
			ps.setString(1,username);
			ps.setString(2,password);
			ps.setString(3, name);
			ps.setString(4, address);
			ps.setString(5, gender);
			ps.setString(6, email);
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				
				out.println("<h3><center><font color='green'>Registered Successfully</font></center></h3>");
				RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
				rd.include(request, response);
			}
			else
			{
				out.println("<h3><center><font color='red'>Registered Failed</font></center></h3>");
				RequestDispatcher rd = request.getRequestDispatcher("adminRegistration.jsp");
				rd.include(request, response);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			out.println("<h5><center><font color='red'>Something Went Wrong !! Please Try Aga</font></center></h5>");
			RequestDispatcher rd = request.getRequestDispatcher("adminRegistration.jsp");
			rd.include(request, response);
			
		}
	}

}
