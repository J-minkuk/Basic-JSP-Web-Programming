<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-29
  Time: 오전 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
      for (Cookie cookie : cookies) {
        if (cookie.getName().equals("name")) {
          Cookie tempCookie = new Cookie("name", "");
          tempCookie.setMaxAge(0);
          response.addCookie(tempCookie);
        }
      }
    }
%>
<html>
<head>
    <title>쿠키 삭제</title>
</head>
<body>
쿠키를 삭제합니다.
</body>
</html>
