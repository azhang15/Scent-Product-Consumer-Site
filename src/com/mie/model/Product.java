package com.mie.model;

import java.util.List;

public class Product {
	
	private int prodId;
	private String title;
	private String category;
	private String brand;
	private String fragranceFamily;
	private float price;
	private List<String> links;
	private List<String> notes;
	
	
	//TODO: getters, setters, & toString method for all attributes
	
	public int getProdId() {
		return prodId;
	}

	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getCategory() {
		return null;
	}
	
	public void setCategory(String brand) {
		
	}
	
	public String getBrand() {
		return null;
	}
	
	public void setBrand(String brand) {
		
	}
	
	public String getFragranceFamily() {
		return null;
	}
	
	public void setFragranceFamily(String fragranceFamily) {
		
	}
	
	public float getPrice() {
		return price;
	}
	
	public void setPrice(float price) {
		
	}

	public List<String> getLinks() {
		return this.links;
	}
	
	public void setLinks(List<String> links) {
		// TODO Auto-generated method stub
		
	}

	public List<String> getNotes() {
		return this.notes;
	}

	public void setNotes(List<String> notes) {
		this.notes = notes;
	}
	
	@Override
	public String toString() {
		return null;
	}

}
