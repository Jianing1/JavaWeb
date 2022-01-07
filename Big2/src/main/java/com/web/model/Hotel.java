package com.web.model;

public class Hotel {
	private int id;
	private String name;
	private String address;
	private String type;
	private String type2;
	private String tel;
	private String msg;
	private float score;
	private float price;
	private float price2;
	private String imgUrl;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMsg() {
		return this.msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public float getScore() {
		return this.score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public float getPrice() {
		return this.price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getType2() {
		return this.type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

	public float getPrice2() {
		return this.price2;
	}

	public void setPrice2(float price2) {
		this.price2 = price2;
	}

	public String getImgUrl() {
		return this.imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String toString() {
		return "Hotel [id=" + this.id + ", name=" + this.name + ", address=" + this.address + ", type=" + this.type
				+ ", type2=" + this.type2 + ", tel=" + this.tel + ", msg=" + this.msg + ", score=" + this.score
				+ ", price=" + this.price + ", price2=" + this.price2 + ", imgUrl=" + this.imgUrl + "]";
	}
}