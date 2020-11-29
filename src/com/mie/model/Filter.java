package com.mie.model;

public class Filter {
	
	private String gender;
	private String brand;
	private String category;
	private String fragranceFamily;
	private String note;
	private String priceRange;
	// private String occasion;
	// private String personality;
	
	public String getGender() {
		return gender;
	}
	
	public String getBrand() {
		return brand;
	}
	
	public String getCategory() {
		return category;
	}
	
	public String getFragranceFamily() {
		return fragranceFamily;
	}
	
	public String getNote() {
		return note;
	}
	
	public String getPriceRange() {
		return priceRange;
	}
	
	// public String getOccasion() {
	// 	return occasion;
	// }
	
	// public String getPersonality() {
	// 	return personality;
	// }
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public void setFragranceFamily(String ff) {
		this.category = ff;
	}
	
	public void setNote(String note) {
		this.note = note;
	}
	
	public void setPriceRange(String priceRange) {
		this.priceRange = priceRange;
	}
	
	// public void setOccasion(String occasion) {
	// 	this.occasion = occasion;
	// }
	
	// public void setPersonality(String personality) {
	// 	this.personality = personality;
	// }
}
