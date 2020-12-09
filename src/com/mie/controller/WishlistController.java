package com.mie.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.dao.ProductDao;
import com.mie.dao.UserDao;
import com.mie.dao.WishlistItemDao;
import com.mie.model.Product;
import com.mie.model.User;
import com.mie.model.WishlistItem;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;  
import java.util.Date;  

public class WishlistController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private static String WISHLIST = "/myAccount.jsp";
	private static String LIST_PRODUCT = "/products.jsp";
	
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
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("currentSessionUser");
		
		if (request.getSession(false) != null) {
			String prodidStr = request.getParameter("prodid");
			int prodid = Integer.parseInt("prodidStr");
			
			long millis=System.currentTimeMillis();  
			java.sql.Date date= new java.sql.Date(millis); 
			
			String pattern = "MM/dd/yyyy HH:mm:ss";
			DateFormat df = new SimpleDateFormat(pattern);
			Date today = Calendar.getInstance().getTime(); 
			String todayAsString = df.format(today);
			
			WishlistItem item = new WishlistItem();
			item.setProdId(prodid);
			item.setUserId(user.getUserId());
			item.setDateAdded(todayAsString);
			
			dao.addWishlistItem(item);
			
			RequestDispatcher view = request.getRequestDispatcher(forward);
			view.forward(request, response);
		} else {
			response.sendRedirect("/index.jsp");
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("currentSessionUser");
		System.out.println(user);
		
		if (user != null) {
			String prodidStr = request.getParameter("prodid");
//			System.out.println(prodidStr);
			int prodid = Integer.parseInt(prodidStr);
			
			long millis=System.currentTimeMillis();  
			java.sql.Date date= new java.sql.Date(millis); 
			
			String pattern = "MM/dd/yyyy HH:mm:ss";
			DateFormat df = new SimpleDateFormat(pattern);
			Date today = Calendar.getInstance().getTime(); 
			String todayAsString = df.format(today);
			
			WishlistItem item = new WishlistItem();
			item.setProdId(prodid);
			item.setUserId(user.getUserId());
			item.setDateAdded(todayAsString);
			
			dao.addWishlistItem(item);
			
			RequestDispatcher view = request.getRequestDispatcher(LIST_PRODUCT);
			view.forward(request, response);
		} else {
			response.sendRedirect("index.jsp#login");
		}
		
//		WishlistItem wlitem = new WishlistItem();
//		dao.addWishlistItem(wlitem);
//		wlitem.setProdId(Integer.parseInt(request.getParameter("prodId")));
//		wlitem.setUserId(Integer.parseInt(request.getParameter("userId")));
//		
//		dao.addWishlistItem(wlitem);
//
//		RequestDispatcher view = request.getRequestDispatcher(WISHLIST);
//		request.setAttribute("wishlist", dao.getWishlist(Integer.parseInt(request.getParameter("userId"))));
//		view.forward(request, response);
	}
}
