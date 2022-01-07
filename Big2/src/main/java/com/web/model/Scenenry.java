package com.web.model;

public class Scenenry {
	private int id;
	private String name;
	private String openTime;
	private String address;
	private String website;
	private String tel;
	private String msg;
	private float score;
	private float price;
	private float curPrice;

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

	public String getOpenTime() {
		return this.openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getWebsite() {
		return this.website;
	}

	public void setWebsite(String website) {
		this.website = website;
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

	public float getCurPrice() {
		return this.curPrice;
	}

	public void setCurPrice(float curPrice) {
		this.curPrice = curPrice;
	}

	public String toString() {
		return "Scenenry [id=" + this.id + ", name=" + this.name + ", openTime=" + this.openTime + ", address="
				+ this.address + ", website=" + this.website + ", tel=" + this.tel + ", msg=" + this.msg + ", score="
				+ this.score + ", price=" + this.price + ", curPrice=" + this.curPrice + "]";
	}
}