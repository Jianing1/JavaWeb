package com.web.model;

public class Car {
	private int id;
	private String user;
	private String type;
	private String content;
	private int count;
	private float total;
	private String imgUrl;
	private String date;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return this.user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getCount() {
		return this.count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public float getTotal() {
		return this.total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public String getImgUrl() {
		return this.imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String toString() {
		return "Car [id=" + this.id + ", user=" + this.user + ", type=" + this.type + ", content=" + this.content
				+ ", count=" + this.count + ", total=" + this.total + ", imgUrl=" + this.imgUrl + ", date=" + this.date
				+ "]";
	}
}