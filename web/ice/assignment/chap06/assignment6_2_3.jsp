<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-08
  Time: ���� 1:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>Assignment6_2_3</title>
</head>
<body>
Attribute ID ��: <%= session.getAttribute("sID") %><br>
Attribute Password ��: <%= session.getAttribute("sPW") %><br>

isNew(): <%= session.isNew() %><br>
���� ID: <%= session.getId() %>

<%
    Date time = new Date();
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    time.setTime(session.getCreationTime());
%>
���� ���� �ð�: <%= format.format(time) %><br>
<%
    time.setTime(session.getLastAccessedTime());
%>
���� ������ ���� �ð�: <%= format.format(time) %><br>
<%
    session.invalidate();
%>
<a href="assignment6_2_1.jsp">���� ���� �ϱ�</a>
</body>
</html>
