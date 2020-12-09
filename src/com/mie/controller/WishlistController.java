package com.mie.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.dao.ProductDao;
import com.mie.dao.WishlistItemDao;
import com.mie.model.Product;
import com.mie.model.User;
import com.mie.model.WishlistItem;

import java.io.IOException;

public class WishlistController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private static String WISHLIST = "/myAccount.jsp";
	
	private WishlistItemDao dao;
	private ProductDao pdao;
	
	public WishlistController() {
		super();
		dao = new WishlistItemDao();
		pdao = new ProductDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = WISHLIST;
//		String action = request.getParameter("action");
//	
//		if (action.equalsIgnoreCase("deleteWishlistItem")){
//			int WLItemId = Integer.parseInt(request.getParameter("WLItemId"));
//			int userId = Integer.parseInt(request.getParameter("userId"));
//			dao.deleteWishlistItem(WLItemId);
//			request.setAttribute("wishlist", dao.getWishlist(userId));
//		}
//		HttpSession session = request.getSession(true);
//		session.setAttribute("currentSessionUser", user);
//		session.setAttribute("email", user.getEmail());
//		session.setAttribute("firstname", user.getFirstName());
//		session.setAttribute("lastname", user.getLastName());
		
		String prodidStr = request.getParameter("prodid");
		int prodid = Integer.parseInt("prodidStr");
		
		Product product = pdao.getProduct(prodid);
		
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
