<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-22
  Time: 오전 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>문제 3 결과 페이지</title>
</head>
<body>
<%= request.getParameter("name") %>이 좋아하는 색깔은
 <%= request.getParameter("color") %>이고
 취미는 <%= request.getAttribute("sports") %>입니다.
</body>
</html>
