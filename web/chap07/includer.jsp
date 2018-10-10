<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-10
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>includer 디렉티브</title>
</head>
<body>
<%
    int number = 10;
%>

<%@ include file="include.jspf"%>

공통변수 DATAFOLDER = "<%= dataFolder %>"
</body>
</html>
