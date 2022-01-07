package db;

import java.sql.*;

public class DbUtil {

	static String url = "jdbc:mysql://127.0.0.1:3306/bingdb?useSSL=false&serverTimezone=UTC";
	static String user = "root";
	static String password = "root";

	static Statement s = null;
	static ResultSet rs = null;
	static Connection conn = null;


	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}


	public static PreparedStatement executePreparedStatement(String sql) {
		PreparedStatement ps = null;
		try {
			System.out.print(sql);
			ps = getConnection().prepareStatement(sql);
		} catch (Exception e) {
			System.out.print("µÇÂ¼Ê§°Ü");
		}
		System.out.print("return ps");
		return ps;
	}


	public static void rollback() {
		try {
			getConnection().rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	public static void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (s != null) {
				s.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
