package com.dao.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dao.impl.IBookDao;
import com.db.helper.*;
import com.javabean.Book;

public class BookDaoUtil implements IBookDao{
	/*查询所有的实现方法*/
	@Override
	public List<Book> findAll() {
		String sql = "SELECT* FROM bookmsg";
		ResultSet rs = null;
		List<Book> mylist = new ArrayList<Book>();
		try {
			PreparedStatement ps = DbHelper.executePreparedStatement(sql);
			// 执行sql语句
			rs = ps.executeQuery();
			while (rs.next()) {
				Book b = new Book();
				b.setBookid(rs.getInt("bookid"));
				b.setBookname(rs.getString("bookname"));
				b.setBookprice(rs.getString("bookprice"));
				b.setBookpublic(rs.getString("bookpublic"));
				b.setBookwriter(rs.getString("bookwriter"));
				b.setNumber(rs.getInt("number"));
				mylist.add(b);
			}
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DbHelper.close();
		return mylist;
	}
	/*插入一条数据的实现方法*/
	@Override
	public int insertOneBook(Book book) {
		String sql = "INSERT INTO bookmsg(bookname,bookprice,bookwriter,bookpublic,number) values(?,?,?,?,?)";
		int returnCode = 0;
		try {
			// 执行sql语句
			PreparedStatement ps = DbHelper.executePreparedStatement(sql);
			ps.setString(1, book.getBookname());
			ps.setString(2, book.getBookprice());
			ps.setString(3, book.getBookwriter());
			ps.setString(4, book.getBookpublic());
			ps.setInt(5, book.getNumber());
			returnCode = ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DbHelper.close();
		return returnCode;
	}
	/*更新一个书本信息的方法*/
	@Override
	public int updateOneBook(Book book) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE bookmsg SET ");
		if(book.getBookname() != null) {
			sql.append("bookname ="+book.getBookname()+",");
		}
		if(book.getBookprice() != null) {
			sql.append("bookprice ="+book.getBookprice()+",");
		}
		if(book.getBookpublic() != null) {
			sql.append("bookpublic ="+book.getBookpublic()+",");
		}
		if(book.getBookwriter() != null) {
			sql.append("bookwriter ="+book.getBookwriter()+",");
		}
		if(book.getNumber() != null) {
			sql.append("number ="+book.getNumber()+",");
		}
		sql.deleteCharAt(sql.length() - 1);
		sql.append(" WHERE bookid="+book.getBookid());
		System.out.print(sql);
		int returnCode = 0;
		try {
			// 执行sql语句
			PreparedStatement ps = DbHelper.executePreparedStatement(sql.toString());
			returnCode = ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DbHelper.close();
		return returnCode;
	}
	@Override
	public int deleteOneBook(Book book) {
		String sql = "DELETE FROM bookmsg WHERE bookid = ?";
		int returnCode = 0;
		try {
			// 执行sql语句
			PreparedStatement ps = DbHelper.executePreparedStatement(sql);
			ps.setInt(1, book.getBookid());
			returnCode = ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DbHelper.close();
		return returnCode;
	}
}
