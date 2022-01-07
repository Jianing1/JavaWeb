package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.factory.DaoBookFactory;
import com.dao.impl.IBookDao;
import com.javabean.Book;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Book book = new Book();
		book.setBookid(Integer.parseInt(request.getParameter("bookid")));
		IBookDao bookutil = DaoBookFactory.getBookDaoInstance();
		int resultcode = bookutil.deleteOneBook(book);
		PrintWriter out = response.getWriter();
		if(resultcode != 0) {
			out.print("<script> alert(\"删除书本数据成功!\");window.location='showBook.jsp' </script>");
		}
		else {
			out.print("<script> alert(\"删除书本数据失败!\"); </script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
