package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class logServlet
 */
public class logServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public logServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String str = request.getHeader("referer");
		if (str == null || str.startsWith("http://localhost")) {
			response.sendRedirect("login.jsp");
			return;
		} else {
			doPost(request, response);
		}
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("content-type", "text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		Connection connection = null;
		Statement statement = null;
		HttpSession session = request.getSession();
		try {
			String user = request.getParameter("user");
			String pass = request.getParameter("password");

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/login?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
			connection = DriverManager.getConnection(url);
			statement = connection.createStatement();
			request.setCharacterEncoding("UTF-8");
			if (statement != null) {
				ResultSet sq1 = statement
						.executeQuery("SELECT * from user WHERE user = '" + user + "'AND password = '" + pass + "'");
				if (sq1.next()) {
					session.setAttribute("username", user);
					response.sendRedirect("success.jsp");
				} else {
					ResultSet sq2 = statement.executeQuery("SELECT user from user WHERE user='" + user + "'");
					if (sq2.next()) {
						response.sendRedirect("login.jsp");
					} else {
						response.sendRedirect("zhuce.jsp");
					}
				}
				sq1.close();
			}

			if (connection != null) {
				connection.close();
			}
			if (statement != null) {
				connection.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
