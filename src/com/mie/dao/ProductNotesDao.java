package com.mie.dao;

import com.mie.model.Product;
import com.mie.model.ProductNotes;
import com.mie.util.DbUtil;
import java.sql.Connection;
import java.util.List;

public class ProductNotesDao {

	//TODO: complete empty methods
	
	private Connection connection;
	
	public ProductNotesDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addProductNote(ProductNotes productNote) {
		
	}
	
	public void getProductNote (ProductNotes productNote) {
		
	}
	
	public void getProductNoteById (int noteId) {
		
	}
	
	public List<ProductNotes> getProductNotesList(Product product) {
		return null;
	}
	
	public List<ProductNotes> getProductNotesListById(int prodId) {
		return null;
	}
	
	public void updateProductNote(ProductNotes productNote) {
		
	}
	
	public void deleteProductNote(ProductNotes productNote) {
		
	}
	
	public List<ProductNotes> getAllProductNotes() {
		return null;
	}
}
