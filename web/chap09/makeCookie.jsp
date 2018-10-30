<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-29
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<%
    Cookie cookie = new Cookie("name", URLEncoder.encode("조민국", "utf-8"));
    response.addCookie(cookie);
%>
<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>
<%= cookie.getName() %> 쿠키의 값 "<%= cookie.getValue() %>"
</body>
</html>
