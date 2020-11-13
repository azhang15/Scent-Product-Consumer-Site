package com.mie.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.ProductDao;
import com.mie.dao.WishlistItemDao;

import java.io.IOException;

public class WishlistController extends HttpServlet{
	
	//TODO: complete empty methods
	
	private static final long serialVersionUID = 1L;
	//TODO: add JSP page variables
	
	private WishlistItemDao dao;
	
	public WishlistController() {
		super();
		dao = new WishlistItemDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
