package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class BookServlet
 */
public class BookServlet extends HttpServlet {
	
	bean.BookBean book, abook;
	Connection conn = null;
	PreparedStatement psPreparedStatement = null;
	ResultSet rsResultSet = null;
	List<bean.BookBean> allbook = new ArrayList<bean.BookBean>();
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public BookServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		String s1 = request.getParameter("bookName");
		String s2 = request.getParameter("bookPrice");
		String s3 = request.getParameter("author");
		String s4 =	request.getParameter("bookConcern");
		String s5 = request.getParameter("counts");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("name = " + s1);
		
		if (type.equals("add")) {
			if (s1 == null ||s1 =="" || s2 == null ||s2 =="" || s3 == null ||s3 =="" || s4 == null ||s4 =="" || s5 == null||s5 =="" ) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("fail.jsp");
				dispatcher.forward(request, response);
			} else {
				book = new bean.BookBean();
				book.setBookName(s1);
				book.setBookPrice(Double.parseDouble(s2));
				book.setAuthor(s3);
				book.setBookConcern(s4);
				book.setCounts(Integer.parseInt(s5));
				int count = 0;
				System.out.println(s1);
				count = book.addBook(book);
				session.setAttribute("book", book);
				//resp.sendRedirect("show.jsp");
				RequestDispatcher dispatcher = request.getRequestDispatcher("show2.jsp");
				dispatcher.forward(request, response);
				if (count > 0) {
					ResultSet rs = null;
					allbook.clear();
					try {
						rs = book.showBook();
						while (rs.next()) {
							abook = new bean.BookBean();
							abook.setBookName(rs.getString(2));
							abook.setBookPrice(rs.getDouble(3));
							abook.setAuthor(rs.getString(4));
							abook.setBookConcern(rs.getString(5));
							abook.setCounts(rs.getInt(6));
							allbook.add(abook);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					session.setAttribute("allbook", allbook);					
				}
			}
		}
		else if(type.equals("examine")) {			
		}
	}

}
