package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtils {
	// �������������������ݿ�����
	public static Connection getConnection() throws SQLException,
				ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/stuscsystem?serverTimezone=GMT%2B8&useSSL=false&useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true";	//ע�⣺8.0��MySQL���������ӷ�ʽ��һ��
		String Name = "root";
		String password = "zxcvbnm0720";
			Connection conn = DriverManager.getConnection(url, Name, password);
			return conn;
		}
		// �ر����ݿ����ӣ��ͷ���Դ
		public static void release(Statement stmt, Connection conn) {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				stmt = null;
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				conn = null;
			}
		}
	     public static void release(ResultSet rs, Statement stmt, 
	     		Connection conn){
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				rs = null;
			}
			release(stmt, conn);
		}	
}
