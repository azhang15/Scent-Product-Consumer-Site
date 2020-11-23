package com.mie.dao;

import com.mie.model.Product;
import com.mie.util.DbUtil;
import java.sql.Connection;
import java.util.List;

public class ProductDao {

	//TODO: complete empty methods
	
	private Connection connection;
	
	public ProductDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addProduct(Product product) {
		
	}
	
	public void getProduct(Product product) {
		
	}
	
	public void getProductById(int prodId) {
		
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
