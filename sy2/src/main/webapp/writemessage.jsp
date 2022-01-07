<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"%>
<!DOCTYPE html>
<html>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	String content = request.getParameter("content");
	InetAddress addr = InetAddress.getLocalHost();
	String address = addr.getHostAddress();
	String msg = username + "@" + address + "说：" + content;
	List<String> msgList = (List<String>) application.getAttribute("msgList");
	if (msgList == null) {
		msgList = new LinkedList<String>();
	} else {
		msgList.add(msg);
	}
	application.setAttribute("msgList", msgList);
	response.sendRedirect("showmessage.jsp");
	%>
</body>
</html>

