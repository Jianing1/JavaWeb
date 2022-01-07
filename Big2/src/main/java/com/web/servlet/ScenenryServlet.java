package com.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.web.db.DBCon;
import com.web.model.Car;
import com.web.model.Img;
import com.web.model.Message;
import com.web.model.Scenenry;
import com.web.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/scenenry"})
public class ScenenryServlet extends HttpServlet {
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
			Scenenry scenenry = (Scenenry) req.getSession().getAttribute("scenenry");
			User user = (User) req.getSession().getAttribute("user");
			String sql = "insert into message(content,user,pb_date,ref_id,type) values('" + cont + "','"
					+ user.getUsername() + "','" + sf.format(new Date()) + "'," + scenenry.getId() + ",1)";
			DBCon dbCon = new DBCon();
			dbCon.executeUpdate(sql);
			req.setAttribute("name", scenenry.getName());
			resp.sendRedirect(req.getHeader("Referer"));
		}

	}

	private void addCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int count = Integer.valueOf(req.getParameter("count"));
		User user = (User) req.getSession().getAttribute("user");
		Scenenry scenenry = (Scenenry) req.getSession().getAttribute("scenenry");
		ArrayList<Img> imgs = (ArrayList) req.getSession().getAttribute("imgs");
		Car car = new Car();
		car.setUser(user.getUsername());
		car.setType("¾°µãÃÅÆ±");
		car.setContent(scenenry.getName() + "-" + count + "ÕÅ");
		car.setTotal(scenenry.getCurPrice() * (float) count);
		car.setImgUrl(((Img) imgs.get(0)).getUrl());
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		car.setDate(sf.format(new Date()));
		car.setCount(count);
		String sql = "insert into car(user,type,content,total,img_url,date,count) values('" + car.getUser() + "','"
				+ car.getType() + "','" + car.getContent() + "'," + car.getTotal() + ",'" + car.getImgUrl() + "','"
				+ car.getDate() + "'," + car.getCount() + ")";
		System.out.println(sql);
		DBCon dbCon = new DBCon();
		int i = dbCon.executeUpdate(sql);
		System.out.println(i);
		if (i > 0) {
			System.out.println(123213);
			resp.sendRedirect("car");
		}

	}

	private void detail(HttpServletRequest req, HttpServletResponse resp)
			throws SQLException, ServletException, IOException {
		DBCon dbCon = new DBCon();
		String name = req.getParameter("name");
		String sql = "select * from scenenry where name='" + name + "'";
		ResultSet set = dbCon.executeQuery(sql);
		if (set.next()) {
			int id = set.getInt("id");
			float score = set.getFloat("score");
			String openTime = set.getString("open_time");
			String address = set.getString("address");
			String website = set.getString("website");
			String tel = set.getString("tel");
			String msg = set.getString("msg");
			float price = set.getFloat("price");
			float curPrice = set.getFloat("cur_price");
			Scenenry scenenry = new Scenenry();
			scenenry.setId(id);
			scenenry.setAddress(address);
			scenenry.setCurPrice(curPrice);
			scenenry.setMsg(msg);
			scenenry.setName(name);
			scenenry.setOpenTime(openTime);
			scenenry.setPrice(price);
			scenenry.setScore(score);
			scenenry.setTel(tel);
			scenenry.setWebsite(website);
			String sqlImg = "select * from img where type=1 and ref_id=" + id;
			ResultSet set2 = dbCon.executeQuery(sqlImg);
			ArrayList<Img> imgs = new ArrayList();
			if (set2 != null) {
				while (set2.next()) {
					Img scenImg = new Img();
					scenImg.setId(set2.getInt("id"));
					scenImg.setUrl(set2.getString("pic_url"));
					imgs.add(scenImg);
				}
			}

			String msgSql = "select * from message where type=1 and  ref_id=" + id;
			ResultSet set3 = dbCon.executeQuery(msgSql);
			ArrayList<Message> msgs = new ArrayList();
			if (set3 != null) {
				while (set3.next()) {
					Message scenMessage = new Message();
					scenMessage.setUser(set3.getString("user"));
					scenMessage.setDate(set3.getString("pb_date"));
					scenMessage.setCont(set3.getString("content"));
					msgs.add(scenMessage);
				}
			}

			req.getSession().setAttribute("scenenry", scenenry);
			req.getSession().setAttribute("imgs", imgs);
			req.getSession().setAttribute("msgs", msgs);
			System.out.println(scenenry);
			System.out.println(imgs);
			System.out.println(msgs);
			req.getRequestDispatcher("scenenryDetail.jsp").forward(req, resp);
		}

	}
}