package com.web.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBCon {
	public Connection conn = null;
	public Statement stmt = null;
	public ResultSet rs = null;
	private static String dbClassName = "com.mysql.jdbc.Driver";
	private static String dbUrl = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=UTF-8";
	private static String dbUser = "root";
	private static String dbPwd = "root";

	public static Connection getConnection() {
		Connection conn = null;

		try {
			Class.forName(dbClassName).newInstance();
			conn = DriverManager.getConnection(dbUrl, dbUser, dbPwd);
		} catch (Exception var2) {
			var2.printStackTrace();
		}

		if (conn == null) {
			System.err.println("DbConnectionManger.getConnection():" + dbClassName + "\r\n" + dbUrl + "\r\n" + dbUser
					+ "/" + dbPwd);
		} else {
			System.out.println("数据库连接成功");
		}

		return conn;
	}

	public int executeUpdate(String sql) {
		boolean var2 = false;

		try {
			this.conn = getConnection();
			this.stmt = this.conn.createStatement(1004, 1007);
			int result = this.stmt.executeUpdate(sql);
			return result;
		} catch (SQLException var5) {
			int result = 0;
			var5.printStackTrace();

			try {
				this.stmt.close();
			} catch (SQLException var4) {
				var4.printStackTrace();
			}

			return result;
		}
	}

	public ResultSet executeQuery(String sql) {
		try {
			this.conn = getConnection();
			this.stmt = this.conn.createStatement(1004, 1007);
			this.rs = this.stmt.executeQuery(sql);
		} catch (SQLException var3) {
			var3.printStackTrace();
		}

		return this.rs;
	}

	public void close() {
		try {
			if (this.rs != null) {
				this.rs.close();
			}

			if (this.stmt != null) {
				this.stmt.close();
			}

			if (this.conn != null) {
				this.conn.close();
			}
		} catch (Exception var2) {
			var2.printStackTrace(System.err);
		}

	}
}