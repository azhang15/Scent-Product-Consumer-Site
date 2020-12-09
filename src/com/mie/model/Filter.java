package com.mie.model;

import java.util.ArrayList;
import java.util.List;

public class Filter {
	
//	private String gender;
//	private String[] brand;
	private List<String> brand;
//	private String category;
//	private String fragranceFamily;
//	private String[] note;
//	private int[] priceRange;
	private List<String> note;
	private List<Integer> priceRange = new ArrayList<Integer>();
//	 private String occasion;
//	 private String personality;
	
//	public String getGender() {
//		return gender;
//	}
	
//	public String[] getBrand() {
//		return brand;
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
	
//	public String[] getNote() {
//		return note;
//	}
//	
//	public int[] getPriceRange() {
//		return priceRange;
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
	
//	public void setBrand(String[] brand) {
//		for (int i = 0; i < brand.length; i++) {
//			this.brand[i] = brand[i];
//		}
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
	
//	public void setNote(String[] note) {
//		this.note = note;
//	}
//	
//	public void setPriceRange(int[] priceRange) {
//		this.priceRange = priceRange;
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
