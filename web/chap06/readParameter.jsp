<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-07
  Time: 오후 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error/viewErrorMessage.jsp" %>
<html>
<head>
    <title>파라미터 출력</title>
</head>
<body>
name 파라미터 값: <%= request.getParameter("name").toUpperCase() %>
</body>
</html>
