<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-08
  Time: ���� 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<html>
<head>
    <title>Assignment6_2_2</title>
</head>
<body>
<%
    String rID = request.getParameter("id");
    String rPW = request.getParameter("password");
    session.setAttribute("sID", rID);
    session.setAttribute("sPW", rPW);
%>
���ο� ������ �����Ǿ����ϴ�.<br>
����: <%= session.getId() %><br>
<a href="assignment6_2_3.jsp">���� ���� ����</a>
</body>
</html>
