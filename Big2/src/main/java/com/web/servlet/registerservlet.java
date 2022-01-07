package com.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/registerservlet"})
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type", "text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException var10) {
			var10.printStackTrace();
		}

		PrintWriter out = response.getWriter();
		Connection connection = null;
		Statement statement = null;
		String url = "jdbc:mysql://localhost:3306/web?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";

		try {
			connection = DriverManager.getConnection(url);
			statement = connection.createStatement();
			String username = request.getParameter("user");
			String password = request.getParameter("passwd");
			statement
					.executeUpdate("insert into user(username,password) values('" + username + "','" + password + "')");
		} catch (SQLException var9) {
			var9.printStackTrace();
		}

		out.print("<script>alert('×¢²á³É¹¦!');window.location.href='login1.jsp'</script>");
	}
}