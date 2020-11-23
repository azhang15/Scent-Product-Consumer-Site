package com.mie.dao;

import com.mie.model.Product;
import com.mie.model.User;
import com.mie.util.DbUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {

	//TODO: complete empty methods
	
	private Connection connection;
	
	public ProductDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addProduct(Product product) {
		try {
			PreparedStatement preparedStatement1 = connection
					.prepareStatement("insert into products(title,category,brand,fragranceFamily,price) values (?, ?, ?, ?, ? )");
			preparedStatement1.setString(1, product.getTitle());
			preparedStatement1.setString(2, product.getCategory());
			preparedStatement1.setString(3, product.getBrand());
			preparedStatement1.setString(4, product.getFragranceFamily());
			preparedStatement1.setFloat(5, product.getPrice());
			boolean result1 = preparedStatement1.execute();
			
			if (result1) {
				List<String> links = product.getLinks();
				int i = 0;
				while (i < links.size()) {
					PreparedStatement preparedStatement2 = connection
						.prepareStatement("insert into productlinks(link, prodId) values (?, ?)");
					preparedStatement2.setString(1, links.get(i));
					// figure out how to get new auto-created prodid for second parameter
					preparedStatement2.setInt(2, );
					boolean result2 = preparedStatement2.execute();
				}
				
				List<String> notes = product.getNotes();
				int j = 0;
				while (j < notes.size()) {
					PreparedStatement preparedStatement3 = connection
						.prepareStatement("insert into productnotes(note, prodId) values (?, ?)");
					preparedStatement3.setString(1, notes.get(i));
					// figure out how to get new auto-created prodid for second parameter
					preparedStatement3.setInt(2, );
					boolean result3 = preparedStatement3.execute();
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Product getProduct(int prodId) {
		Product product = new Product();
		try {
			PreparedStatement preparedStatment = connection
					.prepareStatement("select * from products where prodid =?");
			preparedStatment.setInt(1, prodId);
			ResultSet rs = preparedStatment.executeQuery();
			
			//TODO: query productlinks and productnodes
			
			if (rs.next()) {
				product.setProdId(rs.getInt("prodid"));
				product.setTitle(rs.getString("title"));
				product.setCategory(rs.getString("category"));
				product.setBrand(rs.getString("brand"));
				product.setFragranceFamily(rs.getString("fragrancefamily"));
				product.setPrice(rs.getFloat("price"));
				//TODO: set links and notes 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} return product;
	}
	
	public List<Product> getProductByKeyword(String keyword) {
		return null;
	}
	
	public void updateProduct(Product product) {
		
	}
	
	public void deleteProduct(Product product) {
		
	}
	
	public void deleteProduct(int prodId) {
		
	}
	
	public List<Product> getAllProducts() {
		return null;
	}
}
