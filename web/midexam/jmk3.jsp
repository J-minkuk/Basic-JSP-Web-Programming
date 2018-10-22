<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-22
  Time: 오전 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>문제 3</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name = "홍길동";
    String color = "빨강";
    request.setAttribute("sports", "축구");
%>
<jsp:forward page="jmk3result.jsp">
    <jsp:param name="name" value="<%= name %>"/>
    <jsp:param name="color" value="<%= color %>"/>
</jsp:forward>
</body>
</html>
