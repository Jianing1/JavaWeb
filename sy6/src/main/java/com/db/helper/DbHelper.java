package com.db.helper;
import java.sql.*;
public class DbHelper {
	/*声明连接数据库的信息，如数据库的URL,用户名，密码*/
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/book_store?characterEncoding=utf-8&autoReconnect=true&failOverReadOnly=false";
	private static final String USER = "root";
	private static final String PASSWORD = "root";
	/*声明JDBC的 相关对象*/
	protected static Statement s = null;    //更新
	protected static ResultSet rs = null;   //查找
	protected static Connection conn = null;//连接
	/*创建数据库连接*/
	public static synchronized Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL,USER,PASSWORD);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	/*关闭数据库连接对象*/
	public static void close() {
		try {
			if(rs != null)
				rs.close();
			if(s != null)
				s.close();
			if(conn != null)
				conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	/*执行动态SQL语句*/
	public static PreparedStatement executePreparedStatement(String sql)
	{
		PreparedStatement ps = null;
		try {
			ps = getConnection().prepareStatement(sql);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return ps;
	}
}
