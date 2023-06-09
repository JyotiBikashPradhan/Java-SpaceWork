package user;
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


@WebServlet("/UserEdit")
public class UserEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		
		
		try {
			Connection cn=DBConn.getConnect();
			PreparedStatement ps=cn.prepareStatement("update user_registration set name=(?), password=(?), address=(?),gender=(?) where username=(?)");
			ps.setString(1, name);
			ps.setString(2, password);
			ps.setString(3, address);
			ps.setString(4, gender);
			ps.setString(5, username);
			
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				
				out.println("<h5><center><font color='green'>Edited Successfull</font></center></h5>");
				RequestDispatcher rd = request.getRequestDispatcher("userEdit.jsp");
				rd.include(request, response);
			}
			else
			{
				out.println("<h5><center><font color='red'>You Could't edit username !!</font></center></h5>");
				RequestDispatcher rd = request.getRequestDispatcher("userEdit.jsp");
				rd.include(request, response);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			out.println("<h5><center><font color='red'>Something Went Wrong !! Please Try Aga</font></center></h5>");
			RequestDispatcher rd = request.getRequestDispatcher("userEdit.jsp");
			rd.include(request, response);
			
		}
		
	}

}
