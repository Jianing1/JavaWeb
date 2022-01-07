package com.dao.impl;

import java.util.List;

import com.javabean.Book;

public interface IBookDao {
	/*查找所有*/
	List<Book> findAll();
	/*插入一个Book对象*/
	int insertOneBook(Book book);
	int updateOneBook(Book book);
	int deleteOneBook(Book book);
}
