<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-29
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
      for (Cookie cookie : cookies) {
        if (cookie.getName().equals("name")) {
          Cookie tempCookie = new Cookie("name", URLEncoder.encode("JSP프로그래밍", "utf-8"));
          response.addCookie(tempCookie);
        }
      }
    }
%>
<html>
<head>
    <title>값 변경</title>
</head>
<body>
name 쿠키의 값을 변경합니다.
</body>
</html>
