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
import java.util.ArrayList;
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
		List<WishlistItem> items = new ArrayList<WishlistItem>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from wishlist where userid=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				WishlistItem item = new WishlistItem();
				item.setWLItemId(rs.getInt("wlitemid"));
				item.setProdId(rs.getInt("prodid"));
				item.setUserId(rs.getInt("userid"));
				items.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} return items;
	}
	
	public void deleteWishlistItem(int WLItemId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from wishlist where wlitemid=?");
			preparedStatement.setInt(1, WLItemId);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
//	public List<WishlistItem> getAllWishlistItems() {
	
//		
//	}

}
