package com.mie.dao;

import com.mie.model.User;
import com.mie.util.DbUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
	
	static Connection connection = null;
	static ResultSet rs = null;
	
	public UserDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into users(FirstName,LastName,email,password) values (?, ?, ?, ? )");
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
//	public void getUser(User user) {
//		
//	}
	
	public User getUser(int userId) {
		User user = new User();
		try {
			PreparedStatement preparedStatment = connection
					.prepareStatement("select * from users where userid =?");
			preparedStatment.setInt(1, userId);
			ResultSet rs = preparedStatment.executeQuery();
			
			if (rs.next()) {
				user.setUserId(rs.getInt("userid"));
				user.setFirstName(rs.getString("FirstName"));
				user.setLastName(rs.getString("LastName"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} return user;
	}
	
	public List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from users");
			while (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("userid"));
				user.setFirstName(rs.getString("FirstName"));
				user.setLastName(rs.getString("LastName"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} return users;
	}
	
	public List<User> getUserByKeyword(String keyword) {
		List<User> users = new ArrayList<User>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from users where FirstName LIKE ? OR LastName LIKE ? or email LIKE ?");
			preparedStatement.setString(1, "%" + keyword + "%");
			preparedStatement.setString(2, "%" + keyword + "%");
			preparedStatement.setString(3, "%" + keyword + "%");
			preparedStatement.setString(4, "%" + keyword + "%");
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("userid"));
				user.setFirstName(rs.getString("FirstName"));
				user.setLastName(rs.getString("LastName"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} return users;
	}
	
	public void updateUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update users set FirstName=?, LastName=?, email=?, password=? where userid=?");
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from users where userid=?");
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static User login(User user) {
		Statement stmt = null;
		
		String email = user.getEmail();
		String password = user.getPassword();
		
		String searchQuery = "select * from users where email='"
				+ email + "' AND password ='" + password + "'";
		
		try {
			// connect to DB
			connection = DbUtil.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();
			
			if (!more) {
				user.setValid(false);
			} else if (more) {
				String FirstName = rs.getString("FirstName");
				String LastName = rs.getString("LastName");
				
				user.setFirstName(FirstName);
				user.setLastName(LastName);
				user.setValid(true);
			}
		} catch (Exception ex) {
			System.out.println("Log in failed: An Exception has occurred!" + ex);
		}
		
		return user;
	}
}
