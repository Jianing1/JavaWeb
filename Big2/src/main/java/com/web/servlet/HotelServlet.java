package com.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

import com.web.db.DBCon;
import com.web.model.Car;
import com.web.model.Hotel;
import com.web.model.Img;
import com.web.model.Message;
import com.web.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/hotel"})
public class HotelServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		System.out.println("m:" + method);
		if (method.equals("detail")) {
			try {
				this.detail(req, resp);
			} catch (SQLException var6) {
				var6.printStackTrace();
			}
		} else if (method.equals("addCar")) {
			this.addCar(req, resp);
		} else if (method.equals("pbMsg")) {
			try {
				this.pbMsg(req, resp);
			} catch (SQLException var5) {
				var5.printStackTrace();
			}
		} else if (method.equals("list")) {
			this.list(req, resp);
		}

	}

	private void pbMsg(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException, SQLException {
		PrintWriter out = resp.getWriter();
		Object uu = req.getSession().getAttribute("user");
		if (uu == null) {
			out.print(
					"<script>alert('You are not logged in and cannot leave a message!!!');window.location.href='login1.jsp'</script>");
		} else {
			String cont = req.getParameter("content");
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			Hotel hotel = (Hotel) req.getSession().getAttribute("hotel");
			User user = (User) req.getSession().getAttribute("user");
			String sql = "insert into message(content,user,pb_date,ref_id,type) values('" + cont + "','"
					+ user.getUsername() + "','" + sf.format(new Date()) + "'," + hotel.getId() + ",2)";
			DBCon dbCon = new DBCon();
			dbCon.executeUpdate(sql);
			req.setAttribute("name", hotel.getName());
			resp.sendRedirect(req.getHeader("Referer"));
		}

	}

	private void addCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Hotel hotel = (Hotel) req.getSession().getAttribute("hotel");
		ArrayList<Img> imgs = (ArrayList) req.getSession().getAttribute("imgs");
		User user = (User) req.getSession().getAttribute("user");
		int cate = Integer.valueOf(req.getParameter("cate"));
		String type = cate == 1 ? "µ¥ÈË´²" : "Ë«ÈË´²";
		float price = cate == 1 ? hotel.getPrice() : hotel.getPrice2();
		String start = req.getParameter("start");
		String end = req.getParameter("end");
		LocalDate s = LocalDate.parse(start);
		LocalDate e = LocalDate.parse(end);
		int days = (int) (e.toEpochDay() - s.toEpochDay());
		Car car = new Car();
		car.setUser(user.getUsername());
		car.setType("¾ÆµêÔ¤¶©");
		car.setContent(hotel.getName() + "," + start + "ÖÁ" + end + "," + type);
		car.setTotal(price * (float) days);
		car.setImgUrl(((Img) imgs.get(0)).getUrl());
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		car.setDate(sf.format(new Date()));
		car.setCount(1);
		String sql = "insert into car(user,type,content,total,img_url,date,count) values('" + car.getUser() + "','"
				+ car.getType() + "','" + car.getContent() + "'," + car.getTotal() + ",'" + car.getImgUrl() + "','"
				+ car.getDate() + "'," + car.getCount() + ")";
		System.out.println(sql);
		DBCon dbCon = new DBCon();
		int i = dbCon.executeUpdate(sql);
		System.out.println(i);
		if (i > 0) {
			resp.sendRedirect("car");
		}

	}

	private void detail(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, ServletException, IOException {
		DBCon dbCon = new DBCon();
		int id = Integer.valueOf(req.getParameter("id"));
		String sql = "select * from hotel where id=" + id;
		ResultSet set = dbCon.executeQuery(sql);
		if (set.next()) {
			float score = set.getFloat("score");
			String address = set.getString("address");
			String name = set.getString("name");
			String tel = set.getString("tel");
			float price = set.getFloat("price");
			float price2 = set.getFloat("price2");
			String type = set.getString("type");
			String type2 = set.getString("type2");
			String msg = set.getString("msg");
			String imgUrl = set.getString("img_url");
			Hotel hotel = new Hotel();
			hotel.setId(id);
			hotel.setAddress(address);
			hotel.setPrice2(price2);
			hotel.setMsg(msg);
			hotel.setName(name);
			hotel.setType(type);
			hotel.setPrice(price);
			hotel.setScore(score);
			hotel.setTel(tel);
			hotel.setType2(type2);
			hotel.setImgUrl(imgUrl);
			String sqlImg = "select * from img where type=2 and ref_id=" + id;
			ResultSet set2 = dbCon.executeQuery(sqlImg);
			ArrayList<Img> imgs = new ArrayList();
			if (set2 != null) {
				while (set2.next()) {
					Img hotelImg = new Img();
					hotelImg.setId(set2.getInt("id"));
					hotelImg.setUrl(set2.getString("pic_url"));
					imgs.add(hotelImg);
				}
			}

			String msgSql = "select * from message where type=2 and ref_id=" + id;
			ResultSet set3 = dbCon.executeQuery(msgSql);
			ArrayList<Message> msgs = new ArrayList();
			if (set3 != null) {
				while (set3.next()) {
					Message hotelMessage = new Message();
					hotelMessage.setUser(set3.getString("user"));
					hotelMessage.setDate(set3.getString("pb_date"));
					hotelMessage.setCont(set3.getString("content"));
					msgs.add(hotelMessage);
				}
			}

			req.getSession().setAttribute("hotel", hotel);
			req.getSession().setAttribute("imgs", imgs);
			req.getSession().setAttribute("msgs", msgs);
			System.out.println(hotel);
			System.out.println(imgs);
			System.out.println(msgs);
			req.getRequestDispatcher("hotelDetail.jsp").forward(req, resp);
		}

	}

	private void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DBCon dbCon = new DBCon();
		String name = req.getParameter("name");
		String sql = "select * from hotel";
		ResultSet set = dbCon.executeQuery(sql);
		ArrayList<Hotel> hotels = new ArrayList();
		if (set != null) {
			try {
				while (true) {
					if (!set.next()) {
						req.setAttribute("hotels", hotels);
						break;
					}

					Hotel hotel = new Hotel();
					hotel.setId(set.getInt("id"));
					hotel.setName(set.getString("name"));
					hotel.setMsg(set.getString("msg"));
					hotel.setAddress(set.getString("address"));
					hotel.setScore(set.getFloat("score"));
					hotel.setPrice(set.getFloat("price"));
					hotel.setImgUrl(set.getString("img_url"));
					hotels.add(hotel);
				}
			} catch (SQLException var9) {
				var9.printStackTrace();
			}
		}

		req.getRequestDispatcher("hotel.jsp").forward(req, resp);
	}
}