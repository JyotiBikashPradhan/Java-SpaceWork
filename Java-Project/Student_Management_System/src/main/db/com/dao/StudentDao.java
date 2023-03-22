package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entities.Student;

public class StudentDao {
	
	private Connection con;

	public StudentDao(Connection con) {
		super();
		this.con = con;
	}
	
    public boolean addStudent(Student student)
    {
    	boolean f=false;
    	try {
    		String sql="insert into student (id, name,roll_no,dob,address,dept_name,sem,email) values(?,?,?,?,?,?,?,?)";
    	
    		
    		 PreparedStatement ps=con.prepareStatement(sql);
    		 
    		 ps.setInt(1, student.getId());
    		
    		 ps.setString(2, student.getName());
    		 ps.setString(3, student.getRoll_no());
    		 ps.setString(4, student.getDob());
    		 ps.setString(5, student.getAddress());
    		 ps.setString(6, student.getDept_name());
    		 ps.setString(7, student.getSem());
    		 ps.setString(8, student.getEmail());
    		 
    		 
    		 int i=ps.executeUpdate();
    		 
    		 if(i==1) {
    			 f=true;
    		 }
    		 
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
		return f;
    	 
    }
    
    
    public List<Student>getAllStudent()
    {
    	List<Student> list=new ArrayList<Student>();
    	Student s=null;
    	
    	try {
    		
    		String sql="select * from student";
    		PreparedStatement ps=con.prepareStatement(sql);
    		ResultSet rs=ps.executeQuery();
    		while(rs.next())
    		{
    			s=new Student();
    			s.setId(rs.getInt(1));
    			s.setName(rs.getString(2));
    			s.setRoll_no(rs.getString(3));
    			s.setDob(rs.getString(4));
    			s.setAddress(rs.getString(5));
    			s.setDept_name(rs.getString(6));
    			s.setSem(rs.getString(7));
    			s.setEmail(rs.getString(8));
    			list.add(s);
    			
    			
    		}
    				 
;    		
    		
    	} catch(Exception e){
    		
    		e.printStackTrace();
    	}
    	
    	
    	
		return list;
    }
    
    
    public Student getStudentById(int id) {
		Student s=null;
		
		try {
    		
    		String sql="select * from student where id=?  ";
    		PreparedStatement ps=con.prepareStatement(sql);
    		ps.setInt(1, id);
    		ResultSet rs=ps.executeQuery();
    		while(rs.next())
    		{
    			s=new Student();
    			s.setId(rs.getInt(1));    			s.setName(rs.getString(2));
    			s.setRoll_no(rs.getString(3));
    			s.setDob(rs.getString(4));
    			s.setAddress(rs.getString(5));
    			s.setDept_name(rs.getString(6));
    			s.setSem(rs.getString(7));
    			s.setEmail(rs.getString(8));
    			
    			
    			
    		}
    				 
;    		
    		
    	} catch(Exception e){
    		
    		e.printStackTrace();
    	}
		
		
		
    	
    	return s;
    	
    }
    
    public boolean updateStudent(Student student)
    {
    	boolean f=false;
    	try {
    		String sql="update student set id=?,name=?,roll_no=?,dob=?,address=?,dept_name=?,sem=?,email=? where id=?";
    		
    		 PreparedStatement ps=con.prepareStatement(sql);
    		 
    		 ps.setInt(1, student.getId());
    		 ps.setString(2, student.getName());
    		 ps.setString(3, student.getRoll_no());
    		 ps.setString(4, student.getDob());
    		 ps.setString(5, student.getAddress());
    		 ps.setString(6, student.getDept_name());
    		 ps.setString(7, student.getSem());
    		 ps.setString(8, student.getEmail());
    		 ps.setInt(9, 0);
    		 
    		 int i=ps.executeUpdate();
    		 
    		 if(i==1) {
    			 f=true;
    		 }
    		 
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
		return f;
    	 
    }
    
    public boolean deleteStudent(int id) {
    	
    	boolean f=false;
    	
    	try {
    		
    		String sql="delete from student where id=?";
    		
    		PreparedStatement ps=con.prepareStatement(sql);
    		ps.setInt(1, id);
    		
    		int i=ps.executeUpdate();
   		 
   		 if(i==1) {
   			 f=true;
   		 }
   		 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
		return f;
		
	}
}
