<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-29
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<%
    Cookie cookie1 = new Cookie("id", "gitflow");
    cookie1.setDomain("www.gitflow.org");
    response.addCookie(cookie1);

//    Cookie tempCookie = new Cookie("id", "madvirus");
//    tempCookie.setDomain(".somehost.com");
//    response.addCookie(tempCookie);

    Cookie cookie2 = new Cookie("only", "onlycookie");
    response.addCookie(cookie2);

    Cookie cookie3 = new Cookie("invalid", "invalidcookie");
    cookie3.setDomain("www.tistory.com");
    response.addCookie(cookie3);
%>
<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>
다음과 같이 쿠키를 생성했습니다.<br>
<%= cookie1.getName() %> = <%= cookie1.getValue() %> [<%= cookie1.getDomain() %>]<br>
<%= cookie2.getName() %> = <%= cookie2.getValue() %> [<%= cookie2.getDomain() %>]<br>
<%= cookie3.getName() %> = <%= cookie3.getValue() %> [<%= cookie3.getDomain() %>]
</body>
</html>
