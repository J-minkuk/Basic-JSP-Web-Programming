<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-18
  Time: 오후 7:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page buffer="8kb" autoFlush="true" %>
<html>
<head>
    <title>autoFlush 속성값 true 예제</title>
</head>
<body>
<% for (int i = 0; i < 1000; ++i) { %>
1234
<% } %>
</body>
</html>
