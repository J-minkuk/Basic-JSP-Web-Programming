<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-08
  Time: 오전 1:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<%
    request.setCharacterEncoding("euc-kr");

    String userId = "admin";
    String userPassword = "1234";
    session.setAttribute("id", userId);
    session.setAttribute("password", userPassword);
%>
<html>
<head>
    <title>exercise6_2_2</title>
</head>
<body>
<%
    if (request.getParameter("id").equals(session.getAttribute("id"))
            && request.getParameter("password").equals(session.getAttribute("password"))) {
%>
사용자 승인에 성공하였습니다.<br>
<strong>사용자 정보</strong>
사용자 ID: <%= session.getAttribute("id") %><br>
비밀번호: <%= session.getAttribute("password") %>
<%
    } else {
      out.print("사용자 승인에 실패했습니다.");
    }
%>
</body>
</html>
