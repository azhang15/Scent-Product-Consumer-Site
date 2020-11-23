package com.mie.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.WishlistItemDao;
import com.mie.model.WishlistItem;

import java.io.IOException;

public class WishlistController extends HttpServlet{
	
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
		
		if (action.equalsIgnoreCase("deleteWishlistItem")){
			int WLItemId = Integer.parseInt(request.getParameter("WLItemId"));
			int userId = Integer.parseInt(request.getParameter("userId"));
			dao.deleteWishlistItem(WLItemId);
			request.setAttribute("wishlist", dao.getWishlist(userId));
		} else if (action.equalsIgnoreCase("listWishlist")) {
			int userId = Integer.parseInt(request.getParameter("userId"));
			request.setAttribute("wishlist", dao.getWishlist(userId));
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
		
		dao.addWishlistItem(wlitem);

		RequestDispatcher view = request.getRequestDispatcher(WISHLIST);
		request.setAttribute("wishlist", dao.getWishlist(Integer.parseInt(request.getParameter("userId"))));
		view.forward(request, response);
	}
}
