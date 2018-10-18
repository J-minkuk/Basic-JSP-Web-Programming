<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-18
  Time: 오후 7:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.util.Date" %>
<%
    Date now = new Date();
%>
<html>
<head>
    <title>현재 시간</title>
</head>
<body>
현재 시각: <%= now %>
</body>
</html>
