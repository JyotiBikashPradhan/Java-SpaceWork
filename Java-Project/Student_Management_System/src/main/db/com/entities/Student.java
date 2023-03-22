package com.entities;

public class Student {
	
	private int id;
	private String name;
	private String roll_no;
	private String dob;
	private String address;
	private String dept_name;
	private String sem;
	private String email;
	
	public Student() {
		super();
	}
	

	

	public Student(int id, String name, String roll_no, String dob, String address, String dept_name, String sem,
			String email) {
		super();
		this.id = id;
		this.name = name;
		this.roll_no = roll_no;
		this.dob = dob;
		this.address = address;
		this.dept_name = dept_name;
		this.sem = sem;
		this.email = email;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getRoll_no() {
		return roll_no;
	}




	public void setRoll_no(String roll_no) {
		this.roll_no = roll_no;
	}




	public String getDob() {
		return dob;
	}




	public void setDob(String dob) {
		this.dob = dob;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getDept_name() {
		return dept_name;
	}




	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}




	public String getSem() {
		return sem;
	}




	public void setSem(String sem) {
		this.sem = sem;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", roll_no=" + roll_no + ", dob=" + dob + ", address=" + address
				+ ", dept_name=" + dept_name + ", sem=" + sem + ", email=" + email + "]";
	}



	

}
