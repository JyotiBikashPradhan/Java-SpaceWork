package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.Dbcon;
import com.dao.StudentDao;
import com.entities.Student;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int id=Integer.parseInt(req.getParameter("id"));
		String name =req.getParameter("name");
		String roll_no =req.getParameter("roll_no");
		String dob =req.getParameter("dob");
		String address =req.getParameter("address");
		String dept_name =req.getParameter("dept_name");
		String sem =req.getParameter("sem");
		String email =req.getParameter("email");
		
		Student student =new Student(0 ,name, roll_no, dob, address, dept_name, sem, email);
		
		
		StudentDao dao= new StudentDao(Dbcon.getCon());
		HttpSession session=req.getSession();
		
		boolean f=dao.updateStudent(student);
		
		if(f) {
			session.setAttribute("succMsg", "Student details submited sucessfully");
			resp.sendRedirect("index.jsp");
//			System.out.println("student Details submited sucessfully");
		}
		else {
			session.setAttribute("errMsg", "Something wrong on server");
			resp.sendRedirect("index.jsp");
//			System.out.println("something wrong on server");
		}
				
		
		
	}
	

}
