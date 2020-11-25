package com.mie.model;

public class WishlistItem {

	private int WLItemId;
	private int prodId;
	private int userId;
	
	//TODO: getters, setters, & toString method for all attributes
	public void setWLItemId(int wId) {
		// TODO Auto-generated method stub
		this.WLItemId = wId;
	}
	
	public void setProdId(int pId) {
		// TODO Auto-generated method stub
		this.prodId = pId;
	}

	public void setUserId(int uId) {
		// TODO Auto-generated method stub
		this.userId = uId;
	}

	public int getWishListItemId() {
		return WLItemId;
	}
	
	public int getProdId() {
		// TODO Auto-generated method stub
		return prodId;
	}

	public int getUserId() {
		// TODO Auto-generated method stub
		return userId;
	}
}
