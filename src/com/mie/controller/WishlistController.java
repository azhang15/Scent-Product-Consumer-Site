package com.mie.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.ProductDao;
import com.mie.dao.WishlistItemDao;
import com.mie.model.WishlistItem;

import java.io.IOException;

public class WishlistController extends HttpServlet{
	
	//TODO: add JSP page variables
	private static final long serialVersionUID = 1L;
	private static String WISHLIST = "/recom.jsp";
	
	private WishlistItemDao dao;
	
	public WishlistController() {
		super();
		dao = new WishlistItemDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = WISHLIST;
		String action = request.getParameter("action");
		
		if (action.equalsIgnoreCase("delete")) {
			int WLItemId = Integer.parseInt(request.getParameter("WLItemId"));
			dao.deleteWishlistItem(WLItemId);
//			forward = WISHLIST;
			request.setAttribute("wishlist", dao.getAllWishlistItems());
		} else if (action.equalsIgnoreCase("insert")) {
			dao.addWishlistItem(Integer.parseInt(request.getParameter("WLItemId")));
			request.setAttribute("wishlist", dao.getAllWishlistItems());
		} else if (action.equalsIgnoreCase("listWishlist")) {
			request.setAttribute("wishlist", dao.getAllWishlistItems());
		} else if (action.equalsIgnoreCase("filter")) {
			//TODO:
		} 
		
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WishlistItem wlitem = new WishlistItem();
		dao.addWishlistItem(wlitem);
		wlitem.setProdId(Integer.parseInt(request.getParameter("prodId")));
		wlitem.setUserId(Integer.parseInt(request.getParameter("userId")));
		
		RequestDispatcher view = request.getRequestDispatcher(WISHLIST);
		request.setAttribute("wishlist", dao.getAllWishlistItems());
		view.forward(request, response);
	}
}
