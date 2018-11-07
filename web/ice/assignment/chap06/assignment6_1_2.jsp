<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-08
  Time: 오전 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.net.URLEncoder" %>
<html>
<head>
    <title>Assignment6_1_2</title>
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

    String userId = "admin";
    String userPassword = "1234";
    session.setAttribute("id", userId);
    session.setAttribute("password", userPassword);
    String rID = request.getParameter("id");
    String rPW = request.getParameter("password");
    if (rID.equals(session.getAttribute("id")) && rPW.equals(session.getAttribute("password"))) {
      out.println("로그인 성공");
%>
<strong>사용자 정보</strong><br>
사용자 ID: <%= session.getAttribute("id") %><br>
비밀번호: <%= session.getAttribute("password") %>
<%
    } else {
      out.print("로그인 실패");
    }
%>
</body>
</html>
