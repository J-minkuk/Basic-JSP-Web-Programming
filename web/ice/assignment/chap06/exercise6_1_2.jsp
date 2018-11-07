<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-07
  Time: 오후 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.net.URLEncoder" %>
<%
    request.setCharacterEncoding("euc-kr");
%>
<html>
<head>
    <title>exercise6_1_2</title>
</head>
<body>
<%
    Enumeration enumValue = request.getParameterNames();
    while (enumValue.hasMoreElements()) {
      String paramName = (String) enumValue.nextElement();
      String paramValue = request.getParameter(paramName);
      Cookie cookie = new Cookie(paramName, URLEncoder.encode(paramValue));
      response.addCookie(cookie);
    }
%>

<a href="exercise6_1_3.jsp">확인 페이지로 이동</a>
</body>
</html>
