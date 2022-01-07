package com.javabean;

public class Book {
	private Integer bookid;
	private String bookname;
	private String bookprice;
	private String bookwriter;
	private Integer number;
	private String bookpublic;
	public String getBookpublic() {
		return bookpublic;
	}
	public void setBookpublic(String bookpublic) {
		this.bookpublic = bookpublic;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookprice() {
		return bookprice;
	}
	public void setBookprice(String bookprice) {
		this.bookprice = bookprice;
	}
	public String getBookwriter() {
		return bookwriter;
	}
	public void setBookwriter(String bookwriter) {
		this.bookwriter = bookwriter;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", bookname=" + bookname + ", bookprice=" + bookprice + ", bookwriter="
				+ bookwriter + ", number=" + number + ", bookpublic=" + bookpublic + "]";
	}
	public Integer getBookid() {
		return bookid;
	}
	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}
}
