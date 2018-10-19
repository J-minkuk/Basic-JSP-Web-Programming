<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-19
  Time: 오후 7:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="member" scope="request" class="chap08.ex1.member.MemberInfo"/>
<jsp:setProperty name="member" property="email" value="mingood92@gmail.com"/>
<jsp:setProperty name="member" property="id" param="memberId"/>
<html>
<head>
    <title>인사말</title>
</head>
<body>
<%= member.getName() %> (<%= member.getId() %>) <%= member.getEmail() %>회원님
안녕하세요.
</body>
</html>
