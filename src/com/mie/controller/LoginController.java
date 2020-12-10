package com.mie.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.model.*;
import com.mie.dao.*;

/**
 * Servlet implementation for LoginController.
 * 
 * This class handles the login servlet and assigns session attributes for users
 * who succesfully log into the system.
 */
public class LoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private ProductDao pdao;
	
	public LoginController() {
		super();
		pdao = new ProductDao();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		/**
		 * Retrieve the entered username and password from the login.jsp form.
		 */
		User user = new User();
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("psw"));
//		System.out.println(request.getParameter("email"));
//		System.out.println(request.getParameter("psw"));

		try {
			/**
			 * Try to see if the user can log in.
			 */
			user = UserDao.login(user);

			/**
			 * If the isValid value is true, assign session attributes to the
			 * current user.
			 */
			if (user.isValid()) {

				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", user);
				session.setAttribute("email", user.getEmail());
				session.setAttribute("firstname", user.getFirstName());
				session.setAttribute("lastname", user.getLastName());
//				System.out.println(user);
				
				request.setAttribute("wishlist", (new WishlistItemDao()).getWishlist(user.getUserId()));
//				System.out.println((new WishlistItemDao()).getWishlist(user.getUserId()));
				
				/**
				 * Redirect to the main page.
				 */
				
//				response.sendRedirect("myAccount.jsp");
				
				RequestDispatcher view = request.getRequestDispatcher("/myAccount.jsp");
				view.forward(request, response);

				/**
				 * Set a timeout variable of 900 seconds (15 minutes) for this
				 * user who has logged into the system.
				 */
				session.setMaxInactiveInterval(900);
			}

			else {
				/**
				 * Otherwise, redirect the user to the invalid login page and
				 * ask them to log in again with the proper credentials.
				 */
				request.setAttribute("error", "Error: invalid login");
				response.sendRedirect("index.jsp");
			}
		}

		catch (Throwable theException) {
			/**
			 * Print out any errors.
			 */
			System.out.println(theException);
		}
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Quiz quiz = new Quiz();
		String[] brand = request.getParameterValues("brandcb");
		List<String> brands = new ArrayList<String>();
		for (int i = 0; i < brand.length; i++) {
			brands.add(brand[i]);
		}
		String[] note = request.getParameterValues("notescb");
		List<String> notesList = new ArrayList<String>();
		for (int i = 0; i < note.length; i++) {
			notesList.add(note[i]);
		}
		String[] price = request.getParameterValues("pricecb");
		List<String> priceList = new ArrayList<String>();
		for (int i = 0; i < price.length; i++) {
			priceList.add(price[i]);
		}
		
		quiz.setBrand(brands);
		quiz.setNote(notesList);
		quiz.setPriceRange(priceList);


		request.setAttribute("products", pdao.searchByQuiz(quiz));
		
		RequestDispatcher view = request.getRequestDispatcher("/products.jsp");
		view.forward(request, response);
		
//		System.out.println("quiz reaches product controller");
	}
}
