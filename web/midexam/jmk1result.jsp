<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-22
  Time: 오전 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String[] languages = request.getParameterValues("language");
%>
<html>
<head>
    <title>실행페이지</title>
</head>
<body>
당신이 가능한 외국어는
<%
    for (String language : languages) {
      out.print(language+ " ");
    }
%>
입니다.
</body>
</html>
