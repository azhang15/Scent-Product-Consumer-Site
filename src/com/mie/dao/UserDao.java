package com.mie.dao;

import com.mie.model.User;
import com.mie.util.DbUtil;
import java.sql.Connection;
import java.util.List;

public class UserDao {

	//TODO: complete empty methods
	
	static Connection connection = null;
	static ResultSet rs = null;
	
	public UserDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addUser(User user) {
		
	}
	
	public void getUser(User user) {
		
	}
	
	public void getUserById(int userId) {
		
	}
	
	public List<User> getUserByKeyword() {
		
	}
	
	public void updateUser(User user) {
		
	}
	
	public void deleteUser(User user) {
		
	}
	
	public List<User> getAllUsers() {
		
	}
	
	public static User login(User user) {
		
	}
}
