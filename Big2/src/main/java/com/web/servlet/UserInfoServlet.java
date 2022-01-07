package com.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.web.db.DBCon;
import com.web.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/userInfo"})
public class UserInfoServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setHeader("content-type", "text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		User user = (User) req.getSession().getAttribute("user");
		int id = Integer.valueOf(req.getParameter("id"));
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String qq = req.getParameter("qq");
		String email = req.getParameter("email");
		DBCon dbCon = new DBCon();
		String sql = "update user set username='" + username + "',password='" + password + "',qq='" + qq + "',email='"
				+ email + "' where id=" + id;
		dbCon.executeUpdate(sql);
		user.setUsername(username);
		user.setPassword(password);
		user.setQq(qq);
		user.setEmail(email);
		req.getSession().setAttribute("user", user);
		out.print("<script>alert('ÐÞ¸Ä³É¹¦£¡');window.location.href='person.jsp'</script>");
	}
}