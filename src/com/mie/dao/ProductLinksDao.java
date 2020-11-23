package com.mie.dao;

import com.mie.model.Product;
import com.mie.model.ProductLinks;
import com.mie.util.DbUtil;
import java.sql.Connection;
import java.util.List;

public class ProductLinksDao {

	//TODO: complete empty methods
	
	private Connection connection;
	
	public ProductLinksDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addProductLink(ProductLinks productLink) {
		
	}
	
	public void getProductLink (ProductLinks productLink) {
		
	}
	
	public void getProductLinkById (int linkId) {
		
	}
	
	public List<ProductLinks> getProductLinkList(Product product) {
		return null;
	}
	
	public List<ProductLinks> getProductLinkListById(int prodId) {
		return null;
	}
	
	public void updateProductLink(ProductLinks productLink) {
		
	}
	
	public void deleteProductLink(ProductLinks productLink) {
		
	}
	
	public List<ProductLinks> getAllProductLinks() {
		return null;
	}
}
