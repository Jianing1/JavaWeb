package Cont;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Pojo.User;

@Controller
public class FirstController {
	@RequestMapping(value = {"/firstController"}, method = {RequestMethod.GET})
	public String toLogin() {
		System.out.println("get被调用");
		return "Login";
	}

	@RequestMapping(value = {"/firstController"}, method = {RequestMethod.POST})
	public String handleRequest(@RequestParam("username") String username, @RequestParam("userpwd") String password,
			HttpServletRequest request, HttpSession session) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/userlist?user=root&password=root";
		Connection con = DriverManager.getConnection(url);
		String sql = "SELECT* FROM USER WHERE USERNAME=? AND PASSWORD=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if (!rs.next()) {
			return "defeat";
		} else {
			User user = new User();
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			rs.close();
			ps.close();
			con.close();
			request.setAttribute("usr", user.getUsername());
			System.out.println(request.getAttribute("usr") + "被调用");
			session = request.getSession();
			session.setAttribute("USER_SESSION", user);
			return "first";
		}
	}

	@RequestMapping({"/main"})
	public String tologin() {
		return "Login";
	}

	@RequestMapping({"/logout"})
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:firstController";
	}
}