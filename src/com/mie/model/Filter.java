package com.mie.model;

import java.util.ArrayList;
import java.util.List;

public class Filter {
	
//	private String gender;
	private List<String> brand;
//	private String category;
//	private String fragranceFamily;
	private List<String> note;
	private List<Integer> priceRange = new ArrayList<Integer>();
//	 private String occasion;
//	 private String personality;
	
//	public String getGender() {
//		return gender;
//	}
	
	public List<String> getBrand() {
		return brand;
	}
	
//	public String getCategory() {
//		return category;
//	}
//	
//	public String getFragranceFamily() {
//		return fragranceFamily;
//	}
	
	public List<String> getNote() {
		return note;
	}
	
	public List<Integer> getPriceRange() {
		return priceRange;
	}
	
//	 public String getOccasion() {
//	 	return occasion;
//	 }
//	
//	 public String getPersonality() {
//	 	return personality;
//	 }
//	
//	public void setGender(String gender) {
//		this.gender = gender;
//	}
	
	public void setBrand(List<String> brand) {
		this.brand = brand;
	}
	
//	public void setCategory(String category) {
//		this.category = category;
//	}
//	
//	public void setFragranceFamily(String ff) {
//		this.category = ff;
//	}
	
	public void setNote(List<String> note) {
		this.note = note;
	}
	
	public void setPriceRange(List<Integer> priceRange) {
		this.priceRange = priceRange;
	}
	
//	 public void setOccasion(String occasion) {
//	 	this.occasion = occasion;
//	 }
//	
//	 public void setPersonality(String personality) {
//	 	this.personality = personality;
//	 }
}
