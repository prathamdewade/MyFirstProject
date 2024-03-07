package com.model;

public class ProductData extends UserRegister {

	private int id;
	private String pname;
	private String image;
	private String imgDetail;
	private double price;
	
	public ProductData() {
		// TODO Auto-generated constructor stub
	}

	public ProductData(int id, String pname, String image, String imgDetail, double price) {
		super();
		this.id = id;
		this.pname = pname;
		this.image = image;
		this.imgDetail = imgDetail;
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPName() {
		return pname;
	}

	public void setPName(String pname) {
		this.pname = pname;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getImgDetail() {
		return imgDetail;
	}

	public void setImgDetail(String imgDetail) {
		this.imgDetail = imgDetail;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "ProductData [id=" + id + ", name=" + pname + ", image=" + image + ", imgDetail=" + imgDetail + ", price="
				+ price + "]";
	}
	
	

}
