package com.mie.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.ProductDao;
import com.mie.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ProductController extends HttpServlet{
	
	//TODO: add filtering functionality
	
	private static final long serialVersionUID = 1L;
	private static String LIST_PRODUCT_PUBLIC = "/products.jsp";
	
	private ProductDao dao;
	
	public ProductController() {
		super();
		dao = new ProductDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String forward = LIST_PRODUCT_PUBLIC;
		String action = request.getParameter("action");
		
		if (action.equalsIgnoreCase("listProduct")) {
//			forward = LIST_PRODUCT_PUBLIC;
			request.setAttribute("products", dao.getAllProducts());
		} else if (action.equalsIgnoreCase("filter")) {
			//TODO:
		} 
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product product = new Product();
		
		product.setTitle(request.getParameter("title"));
		product.setCategory(request.getParameter("category"));
		product.setBrand(request.getParameter("brand"));
		product.setFragranceFamily(request.getParameter("fragrancefamily"));

		String[] linksArr = request.getParameterValues("links");
		List<String> linksArrList = new ArrayList<String>();
		Collections.addAll(linksArrList, linksArr);
		product.setLinks(linksArrList);

		String[] notesArr = request.getParameterValues("notes");
		List<String> notesArrList = new ArrayList<String>();
		Collections.addAll(notesArrList, notesArr);
		product.setLinks(notesArrList);
		String prodid = request.getParameter("prodid");
		
		/**
		 * If the 'prodid' field in the form is empty, the new product will
		 * be added to the list of Product objects.
		 */
		if (prodid == null || prodid.isEmpty()) {
			dao.addProduct(product);
		} else {
			// editing a student --> update accordingly
			product.setProdId(Integer.parseInt(prodid));
			dao.updateProduct(product);
		}
		
		RequestDispatcher view = request.getRequestDispatcher(LIST_PRODUCT_PUBLIC);
		request.setAttribute("product", dao.getAllProducts());
		view.forward(request,  response);
		
	}
}
