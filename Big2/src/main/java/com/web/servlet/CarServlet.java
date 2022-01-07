package com.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.web.db.DBCon;
import com.web.model.Car;
import com.web.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/car"})
public class CarServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setHeader("content-type", "text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		Object uu = req.getSession().getAttribute("user");
		if (uu == null) {
			out.print("<script>alert('please login!!!');window.location.href='main.jsp'</script>");
		} else {
			String method = req.getParameter("method");
			DBCon dbCon = new DBCon();
			String sql;
			if (method != null && method.equals("delete")) {
				int id = Integer.valueOf(req.getParameter("id"));
				sql = "delete from car where id=" + id;
				dbCon.executeUpdate(sql);
				resp.sendRedirect(req.getHeader("Referer"));
			} else {
				User user = (User) req.getSession().getAttribute("user");
				sql = "select * from car where user = '" + user.getUsername() + "'";
				ResultSet set = dbCon.executeQuery(sql);
				float tot = 0.0F;
				ArrayList<Car> cars = new ArrayList();
				if (set != null) {
					try {
						while (set.next()) {
							Car car = new Car();
							car.setId(set.getInt("id"));
							car.setType(set.getString("type"));
							car.setContent(set.getString("content"));
							car.setCount(set.getInt("count"));
							car.setDate(set.getString("date"));
							car.setImgUrl(set.getString("img_url"));
							car.setTotal(set.getFloat("total"));
							cars.add(car);
							tot += car.getTotal();
						}

						req.setAttribute("cars", cars);
						req.setAttribute("tot", tot);
					} catch (SQLException var13) {
						var13.printStackTrace();
					}
				}

				req.getRequestDispatcher("cart.jsp").forward(req, resp);
			}
		}

	}
}