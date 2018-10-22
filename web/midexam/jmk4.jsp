<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-22
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>시작페이지</title>
</head>
<body>
<form action="jmk4result.jsp" method="post">
    <table border="1" cellspacing="0" cellpadding="0">
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="phoneNumber"></td>
        </tr>
        <tr>
            <td><input type="submit" value="회원 가입"></td>
        </tr>
    </table>
</form>
</body>
</html>
