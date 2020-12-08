package com.mie.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.ProductDao;
import com.mie.model.Filter;
import com.mie.model.Product;

import java.io.Console;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ProductController extends HttpServlet{
	
	//TODO: add filtering functionality
	
	private static final long serialVersionUID = 1L;
	private static String LIST_PRODUCT = "/products.jsp";
	private static String MAIN = "/index.jsp";
	
	private ProductDao pdao;
	
	public ProductController() {
		super();
		pdao = new ProductDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String forward = LIST_PRODUCT;
		//String action = request.getParameter("action");
		request.setAttribute("products", pdao.getAllProducts());
//		if (action.equalsIgnoreCase("listProduct")) {
//			request.setAttribute("products", pdao.getAllProducts());
//		} else if (action.equalsIgnoreCase("filter")) {
//	
//			Filter filter = new Filter();
//			//TODO: check parameter names after frontend finishes the filter page
//			filter.setGender(request.getParameter("gender"));
//			filter.setBrand(request.getParameter("brand"));
//			filter.setCategory(request.getParameter("category"));
//			filter.setFragranceFamily(request.getParameter("fragrancefamily"));
//			filter.setNote(request.getParameter("note"));
//			filter.setPriceRange(request.getParameter("pricerange"));
//			// filter.setOccasion(request.getParameter("occasion"));
//			// filter.setPersonality(request.getParameter("personality"));
//
//			request.setAttribute("products", pdao.filterProducts(filter));
//		}
		
		RequestDispatcher view = request.getRequestDispatcher("/products.jsp");
		view.forward(request, response);
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
			pdao.addProduct(product);
		} else {
			// editing a student --> update accordingly
			product.setProdId(Integer.parseInt(prodid));
			pdao.updateProduct(product);
		}
		
		RequestDispatcher view = request.getRequestDispatcher(LIST_PRODUCT);
		request.setAttribute("product", pdao.getAllProducts());
		view.forward(request,  response);
		
	}
}
