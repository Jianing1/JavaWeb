package Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import Pojo.User;

public class FirstInterceptor implements HandlerInterceptor {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String url = request.getRequestURI();
		System.out.println(url);
		if (url.toLowerCase().endsWith("/firstcontroller")) {
			return true;
		} else {
			HttpSession session = request.getSession();
			User user = null;
			user = (User) session.getAttribute("USER_SESSION");
			if (user != null) {
				return true;
			} else {
				System.out.println("调用");
				request.setAttribute("msg", "您还有没有登录，请先登录");
				request.getRequestDispatcher("WEB-INF/jsp/Login.jsp").forward(request, response);
				return false;
			}
		}
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
}