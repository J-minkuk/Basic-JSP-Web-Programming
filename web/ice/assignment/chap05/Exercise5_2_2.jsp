<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: 오전 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" session="true" %>
<jsp:useBean id="login" scope="page" class="ice.Login"/>
<jsp:setProperty name="login" property="id"/>
<jsp:setProperty name="login" property="password"/>
<html>
<head>
    <title>Exercise5_2_2 조민국</title>
</head>
<body>
<%
    if (login.checkUser()) {
      out.print("사용자 승인에 성공했습니다.");
    } else {
      out.print("사용자 승인에 실패했습니다.");
    }
%>
<p><strong>사용자 정보</strong></p>
사용자 ID: <jsp:getProperty name="login" property="id"/><br>
비밀번호: <jsp:getProperty name="login" property="password"/>
</body>
</html>