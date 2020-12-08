package com.mie.model;

public class User {

	private int userid;
	private String fname;
	private String lname;
	private String email;
	private String password;
	private boolean valid;
	
	//TODO: getters, setters, & toString method for all attributes (see Member.java)
	
	public void setUserId(int userId) {
		// TODO Auto-generated method stub
		this.userid = userId;
	}
	
	public void setFirstName(String firstName) {
		// TODO Auto-generated method stub
		this.fname = firstName;
	}

	public void setLastName(String lastName) {
		// TODO Auto-generated method stub
		this.lname = lastName;
	}
	
	public void setEmail(String email) {
		// TODO Auto-generated method stub
		this.email = email;
	}

	public void setPassword(String password) {
		// TODO Auto-generated method stub
		this.password = password;
	}
	
	public int getUserId() {
		return userid;
	}

	public String getFirstName() {
		// TODO Auto-generated method stub
		return fname;
	}

	public String getLastName() {
		// TODO Auto-generated method stub
		return lname;
	}
	
	public String getEmail() {
		// TODO Auto-generated method stub
		return email;
	}

	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}
	
	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean newValid) {
		valid = newValid;
	}
	
	@Override
	public String toString() {
		return "User [userid=" + userid + ", firstName=" + fname
				+ ", lastName=" + lname + ", email=" + email
				+ ", password=" + password + "]";
	}

}
