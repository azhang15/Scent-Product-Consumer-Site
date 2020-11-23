package com.mie.model;

public class User {

	private int userid;
	private String fname;
	private String lname;
	private String email;
	private String password;
	private boolean valid;
	
	//TODO: getters, setters, & toString method for all attributes (see Member.java)
	
	public void setUserId(int int1) {
		// TODO Auto-generated method stub
		
	}
	
	public void setFirstName(String firstName) {
		// TODO Auto-generated method stub
		
	}

	public void setLastName(String lastName) {
		// TODO Auto-generated method stub
		
	}
	
	public void setEmail(String parameter) {
		// TODO Auto-generated method stub
		
	}

	public void setPassword(String parameter) {
		// TODO Auto-generated method stub
		
	}

	public String getFirstName() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getLastName() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String getEmail() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getPassword() {
		// TODO Auto-generated method stub
		return null;
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
