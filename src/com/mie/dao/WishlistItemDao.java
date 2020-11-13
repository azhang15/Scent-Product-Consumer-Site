package com.mie.dao;

import com.mie.model.Product;
import com.mie.model.ProductLinks;
import com.mie.model.User;
import com.mie.model.WishlistItem;
import com.mie.util.DbUtil;
import java.sql.Connection;
import java.util.List;
	
public class WishlistItemDao {

	//TODO: complete empty methods
	
	private Connection connection;
	
	public WishlistItemDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addWishlistItem(WishlistItem item) {
		
	}
	
	public void getWishlistItem(WishlistItem item) {
		
	}
	
	public void getWishlistItemById(int WLItemId) {
		
	}
	
	public List<WishlistItem> getWishlistByUser(User user) {
		
	}
	
	public List<WishlistItem> getWishlistByUserId(int userId) {
		
	}
	
	public void deleteWishlistItem(WishlistItem wishlist) {
		
	}
	
	public List<WishlistItem> getAllWishlistItems() {
		
	}

}
