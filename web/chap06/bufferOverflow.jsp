<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-07
  Time: 오후 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page buffer="1kb" %>
<%@ page errorPage="error/viewErrorMessage.jsp" %>
<html>
<head>
    <title>버퍼 플러시 이후 에러 발생 결과</title>
</head>
<body>
<%
    for (int i = 0; i < 300; ++i) {
        out.print(i);
    }
%>

<%= 1 / 0 %>
</body>
</html>
