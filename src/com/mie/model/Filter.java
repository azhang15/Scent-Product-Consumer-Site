
package com.mie.model;

import java.util.ArrayList;
import java.util.List;

public class Filter {
	
	private List<String> brand = new ArrayList<String>();
	private List<String> note = new ArrayList<String>();
	private List<String> priceRange = new ArrayList<String>();

	public List<String> getBrand() {
		return brand;
	}
	
	public List<String> getNote() {
		return note;
	}
	
	public List<String> getPriceRange() {
		return priceRange;
	}
	
	public void setBrand(List<String> brand) {
		this.brand.addAll(brand);
	}
	
	public void setNote(List<String> note) {
		this.note.addAll(note);
	}
	
	public void setPriceRange(List<String> priceRange) {
		this.priceRange.addAll(priceRange);
	}
}
