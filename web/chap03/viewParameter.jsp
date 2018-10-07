<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String[] pets = request.getParameterValues("pet");
	Enumeration params =  request.getParameterNames();
	Map<String, String[]> map = request.getParameterMap();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 읽기 메소드</title>
</head>
<body>
<h2>request.getParameter() 메소드 사용</h2>
name 파라미터 = <%= name %> <br>
address 파라미터 = <%= address %>

<h2>request.getParameterValues() 메소드 사용</h2>
<% for (String pet : pets) { %>
	<%= pet + " " %>
<% } %>

<h2>request.getParameterNames() 메소드 사용</h2>
<% while (params.hasMoreElements()) { %>
	<%= (String) params.nextElement() + " " %>
<% } %>

<h2>request.getParameterMap() 메소드 사용</h2>
<% for(String value : map.get("name")) { %>
	name = <%= value %>
<% } %>


</body>
</html>