<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-18
  Time: 오후 6:58
  To change this template use File | Settings | File Templates.
--%>

<%-- 설정 부분: JSP 페이지에 대한 설정 정보 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- 생성 부분: HTML 코드 및 JSP 스크립트 --%>
<html>
<head>
    <title>HTML 문서의 제목</title>
</head>
<body>
<%
    String bookTitle = "JSP 프로그래밍";
    String author = "최범균";
%>
<b><%= bookTitle %></b> (<%= author %>) 입니다.
</body>
</html>
