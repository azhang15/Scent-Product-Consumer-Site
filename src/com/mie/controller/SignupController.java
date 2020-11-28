package com.mie.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.UserDao;
import com.mie.model.User;

public class SignupController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	private UserDao dao;
	
	public SignupController() {
		super();
		dao = new UserDao();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<User> existingAccounts = new ArrayList<User>();
			existingAccounts = dao.getUserByKeyword(request.getParameter("email"));
			
			if (existingAccounts.isEmpty()) {
				User user = new User();
				
				user.setFirstName(request.getParameter("fname"));
				user.setLastName(request.getParameter("lname"));
				user.setEmail(request.getParameter("email"));
				user.setPassword(request.getParameter("password"));
			} else {
//				response.
			}
		} catch (Throwable theException) {
			System.out.println(theException);
		}
		
	}
}
