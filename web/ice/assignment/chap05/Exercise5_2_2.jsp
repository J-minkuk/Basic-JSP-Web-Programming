<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: ���� 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" session="true" %>
<jsp:useBean id="login" scope="page" class="ice.Login"/>
<jsp:setProperty name="login" property="id"/>
<jsp:setProperty name="login" property="password"/>
<html>
<head>
    <title>Exercise5_2_2 ���α�</title>
</head>
<body>
<%
    if (login.checkUser()) {
      out.print("����� ���ο� �����߽��ϴ�.");
    } else {
      out.print("����� ���ο� �����߽��ϴ�.");
    }
%>
<p><strong>����� ����</strong></p>
����� ID: <jsp:getProperty name="login" property="id"/><br>
��й�ȣ: <jsp:getProperty name="login" property="password"/>
</body>
</html>