<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-18
  Time: 오후 7:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("memberId");
    if (id != null && id.equals("mingooddev")) {
      response.sendRedirect("/chap03/17index.jsp");
    } else {
%>
<html>
<head>
    <title>로그인 실패</title>
</head>
<body>
잘못된 ID 입니다.
</body>
</html>
<% } %>