package com.mie.model;

import java.util.List;

public class Product {
	
	private int prodId;
	public String title;
	private String category;
	private String brand;
	private String fragranceFamily;
	private float price;
	private List<String> links;
	private List<String> notes;
	private String imageLink;
	private String occasion;
	private String personality;
	
	
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
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getBrand() {
		return brand;
	}
	
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public String getFragranceFamily() {
		return fragranceFamily;
	}
	
	public void setFragranceFamily(String fragranceFamily) {
		this.fragranceFamily = fragranceFamily;
	}
	
	public float getPrice() {
		return price;
	}
	
	public void setPrice(float price) {
		this.price = price;
	}

	public List<String> getLinks() {
		return this.links;
	}
	
	public void setLinks(List<String> links) {
		// TODO Auto-generated method stub
		this.links = links;
	}

	public List<String> getNotes() {
		return this.notes;
	}

	public void setNotes(List<String> notes) {
		this.notes = notes;
	}
	
	public String getImageLink() {
		return this.imageLink;
	}

	public void setImageLink(String link) {
		this.imageLink = link;
	}
	
	public String getOccasion() {
		return this.occasion;
	}

	public void setOccasion(String occasion) {
		this.imageLink = occasion;
	}
	
	public String getPersonality() {
		return this.personality;
	}

	public void setPersonality(String personality) {
		this.personality = personality;
	}
	
	@Override
	public String toString() {
		return "Product [prodid=" + prodId + ", title=" + title
				+ ", category=" + category + ", brand=" + brand + ", fragranceFamily="
				+ fragranceFamily + ", price=" + price + ", links=" + links + ", notes=" + notes + "]";
	}

}
