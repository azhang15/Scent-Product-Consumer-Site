package com.mie.dao;

import com.mie.model.Product;
import com.mie.model.ProductLinks;
import com.mie.model.User;
import com.mie.model.WishlistItem;
import com.mie.util.DbUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
	
public class WishlistItemDao {

	//TODO: complete empty methods
	
	private Connection connection;
	
	public WishlistItemDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addWishlistItem(WishlistItem item) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into wishlist(prodid,itemid) values (?, ?)");
			preparedStatement.setString(1, item.getProdId());
			preparedStatement.setString(2, item.getUserId());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
//	public void getWishlistItem(WishlistItem item) {
//		
//	}
	
	public WishlistItem getWishlistItem(int WLItemId) {
		WishlistItem item = new WishlistItem();
		try {
			PreparedStatement preparedStatment = connection
					.prepareStatement("select * from wishlist where wlitemid =?");
			preparedStatment.setInt(1, WLItemId);
			ResultSet rs = preparedStatment.executeQuery();
			
			if (rs.next()) {
				item.setWLItemId(rs.getInt("wlitemid"));
				item.setProdId(rs.getInt("prodid"));
				item.setUserId(rs.getInt("userid"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} return item;
	}
	
//	public List<WishlistItem> getWishlist(User user) {
//		
//	}
	
	public List<WishlistItem> getWishlist(int userId) {
		
	}
	
	public void deleteWishlistItem(WishlistItem wishlist) {
		
	}
	
	public void deleteWishlistItem(int WLItemId) {
		
	}
	
	public List<WishlistItem> getAllWishlistItems() {
		
	}

}
