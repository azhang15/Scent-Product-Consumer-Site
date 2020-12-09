package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.ProductDao;
import com.mie.dao.WishlistItemDao;
import com.mie.model.Product;

public class SearchController extends HttpServlet {
	
	//TODO: add search by filters functionality
	
	/**
	 * This class only handles the SEARCH feature of the web app.
	 * 
	 * These are variables that lead to the appropriate JSP pages.
	 * 
	 * SEARCH_PRODUCT leads to the search results page.
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static String SEARCH_PRODUCT = "/products.jsp";
	private ProductDao dao;
	private WishlistItemDao wldao;

	/**
	 * Constructor for this class.
	 */
	public SearchController() {
		super();
		dao = new ProductDao();
//		wldao = new WishlistItemDao();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/**
		 * This method handles the retrieval of the search keyword entered by
		 * the user.
		 */
		
		String keyword = request.getParameter("keyword");
		// String brands[] = request.getParameterValues("brandcb")
		['chanl', 'CK', 'Brand3']

		RequestDispatcher view = request.getRequestDispatcher(SEARCH_PRODUCT);
		request.setAttribute("keyword", keyword);
		request.setAttribute("products", dao.getProductByKeyword(keyword));
		/**
		 * Redirect to the search results page after the list of products
		 * matching the keywords has been retrieved.
		 */

		view.forward(request, response);
	}
}