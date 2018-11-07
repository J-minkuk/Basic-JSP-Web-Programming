<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-08
  Time: 坷傈 1:47
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
Attribute ID 蔼: <%= session.getAttribute("sID") %><br>
Attribute Password 蔼: <%= session.getAttribute("sPW") %><br>

isNew(): <%= session.isNew() %><br>
技记 ID: <%= session.getId() %>

<%
    Date time = new Date();
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    time.setTime(session.getCreationTime());
%>
技记 积己 矫埃: <%= format.format(time) %><br>
<%
    time.setTime(session.getLastAccessedTime());
%>
技记 付瘤阜 立加 矫埃: <%= format.format(time) %><br>
<%
    session.invalidate();
%>
<a href="assignment6_2_1.jsp">技记 昏力 窍扁</a>
</body>
</html>
