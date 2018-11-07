<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-07
  Time: 오전 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>세션 정보 조회</title>
</head>
<body>
MEMBERID = <%= session.getAttribute("MEMBERID") %><br>
NAME = <%= session.getAttribute("NAME") %>
</body>
</html>
