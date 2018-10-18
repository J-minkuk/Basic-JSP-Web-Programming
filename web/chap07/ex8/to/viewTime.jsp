<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-10
  Time: 오전 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>현재 시간</title>
</head>
<body>
<%
    Calendar cal = (Calendar) request.getAttribute("time");
%>
현재 시간은 <%= cal.get(Calendar.HOUR) %>시
 <%= cal.get(Calendar.MINUTE) %>분
 <%= cal.get(Calendar.SECOND) %>초 입니다.<br>
------------------------------<br>
<%= request.getParameter("first") %> <%= request.getParameter("last") %>
</body>
</html>
