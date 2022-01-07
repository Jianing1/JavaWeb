package com.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.dao.factory.DaoBookFactory;
import com.dao.impl.IBookDao;
import com.javabean.Book;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class ShowFilter
 */
@WebFilter("/showBook.jsp")
public class ShowFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ShowFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.print("过滤器");
		IBookDao bookutil = DaoBookFactory.getBookDaoInstance();
		List<Book> mylist = new ArrayList<Book>();
		mylist = bookutil.findAll();
		request.setAttribute("booklist", mylist);
		chain.doFilter(request, response);
	}
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
