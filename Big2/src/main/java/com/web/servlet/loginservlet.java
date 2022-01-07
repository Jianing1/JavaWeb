package com.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.web.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet({"/loginservlet"})
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type", "text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Connection connection = null;
		Statement statement = null;
		HttpSession session = request.getSession();

		try {
			String username = request.getParameter("username");
			String pass = request.getParameter("p");
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/web?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
			connection = DriverManager.getConnection(url);
			statement = connection.createStatement();
			Object rr = session.getAttribute("user");
			if (rr != null) {
				out.print("<script>alert('ƒ„“—æ≠µ«¬º£°«ÎŒ÷ÿ∏¥µ«¬º');window.location.href='main.jsp'</script>");
			} else {
				if (statement != null) {
					ResultSet sq1 = statement.executeQuery(
							"SELECT * from user WHERE username = '" + username + "'AND password = '" + pass + "'");
					if (sq1.next()) {
						User user = new User();
						user.setId(sq1.getInt("id"));
						user.setUsername(sq1.getString("username"));
						user.setPassword(sq1.getString("password"));
						user.setQq(sq1.getString("qq"));
						user.setEmail(sq1.getString("email"));
						session.setAttribute("user", user);
						out.print("<script>alert('µ«¬º≥…π¶!');window.location.href='main.jsp'</script>");
					} else {
						ResultSet sq2 = statement
								.executeQuery("SELECT username from user WHERE username='" + username + "'");
						if (sq2.next()) {
							out.print("<script>alert('√‹¬Î¥ÌŒÛ,«Î÷ÿ–¬ ‰»Î√‹¬Î');window.location.href='login1.jsp'</script>");
						} else {
							response.sendRedirect("error.jsp");
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
			}
		} catch (Exception var13) {
			;
		}

	}
}