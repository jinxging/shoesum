package com.product.model.vo;

import java.util.List;

public class Product {
//상품
	private int proNo;
	private String proName;
	private int price;
	private int size;
	private String color;
	private int stock;
	private String images;	 //이미지주소들
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(int proNo, String proName, int price, int size, String color, int stock, String images) {
		super();
		this.proNo = proNo;
		this.proName = proName;
		this.price = price;
		this.size = size;
		this.color = color;
		this.stock = stock;
		this.images = images;
	}

	public int getProNo() {
		return proNo;
	}

	public void setProNo(int proNo) {
		this.proNo = proNo;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	
	
	
}
