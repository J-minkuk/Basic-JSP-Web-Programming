<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-07
  Time: 오전 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 폼</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/chap10/member/5sessionLogin.jsp" method="post">
    아이디 <input type="text" name="id" size="10">
    암호 <input type="password" name="password" size="10">
    <input type="submit" value="로그인">
</form>
</body>
</html>
