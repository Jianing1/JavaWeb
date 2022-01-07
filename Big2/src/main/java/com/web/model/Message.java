package com.web.model;

public class Message {
	private String user;
	private String date;
	private String cont;

	public String getUser() {
		return this.user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCont() {
		return this.cont;
	}

	public void setCont(String cont) {
		this.cont = cont;
	}

	public String toString() {
		return "ScenMessage [user=" + this.user + ", date=" + this.date + ", cont=" + this.cont + "]";
	}
}