<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: 오전 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie cookie = new Cookie("oneh", "1time");
    cookie.setMaxAge(60 * 60);
    response.addCookie(cookie);
%>
<html>
<head>
    <title>쿠키 유효 시간 설정</title>
</head>
<body>
유효 시간이 1시간인 oneh 쿠기 생성
</body>
</html>
