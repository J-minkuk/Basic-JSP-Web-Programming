<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-08
  Time: ���� 1:28
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
����� ���ο� �����Ͽ����ϴ�.<br>
<strong>����� ����</strong>
����� ID: <%= session.getAttribute("id") %><br>
��й�ȣ: <%= session.getAttribute("password") %>
<%
    } else {
      out.print("����� ���ο� �����߽��ϴ�.");
    }
%>
</body>
</html>
