<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hanains.guestbook.dao.GuestbookDao"%>
<%@ page import="com.hanains.guestbook.vo.GuestbookVo"%>

<% 
	request.setCharacterEncoding("UTF-8");
	String noStr = request.getParameter("no");
	long no = Long.parseLong(noStr);
	String password = request.getParameter("password");
	System.out.println(no +":"+ password);
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPassword(password);
	
	GuestbookDao dao = new GuestbookDao();
	dao.delete(vo);
	response.sendRedirect("/guestbook");
%>