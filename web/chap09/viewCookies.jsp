<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-29
  Time: 오전 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
    <title>쿠키 목록</title>
</head>
<body>
쿠키 목록<br>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
      for (Cookie cookie : cookies) {
%>
<%= cookie.getName() %> =
<%= URLDecoder.decode(cookie.getValue(), "utf-8") %><br>
<%
      }
    } else {
%>
쿠키가 존재하지 않습니다.
<%
    }
%>
</body>
</html>
