<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-08
  Time: 오전 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
    <title>exercise6_1_3</title>
</head>
<body>
<%
    String name, age, job, cell;

    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
      for (Cookie cookie : cookies) {
        if (cookie.getName().equals("name")) {
          name = URLDecoder.decode(cookie.getValue());
          out.print("이름: " + name + "<br>");
        }
        if (cookie.getName().equals("age")) {
          age = URLDecoder.decode(cookie.getValue());
          out.print("나이: " + age + "<br>");
        }
        if (cookie.getName().equals("job")) {
          job = URLDecoder.decode(cookie.getValue());
          out.print("직업: " + job + "<br>");
        }
        if (cookie.getName().equals("cell")) {
          cell = URLDecoder.decode(cookie.getValue());
          out.print("휴대전화: " + cell + "<br>");
        }
      }
    }
%>
</body>
</html>
