<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>오늘날짜</h2>
	<%
		Date now = new Date();
		String str = "오늘을 7월 20일 입니다.";
		request.setAttribute("now", now);
		request.setAttribute("str", str);
		
		
	%>
	<%= now %>
	<%= str %>
	<hr>
	<p>${now }</p>
	<p>${str }</p>
</body>
</html>