<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-08
  Time: 오전 1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<html>
<head>
    <title>exercise6_2_1</title>
</head>
<body>
<form action="exercise6_2_2.jsp" method="post">
    <table width="300" border="1">
        <tr>
            <td bgcolor="cccccc">사용자 ID</td>
            <td bgcolor="ededed"><input type="text" name="id" size="20"></td>
        </tr>
        <tr>
            <td bgcolor="cccccc">비밀번호</td>
            <td colspan="3" bgcolor="ededed">
                <input type="password" name="password" size="20">
            </td>
        </tr>
    </table>
    <br>
    <input type="submit" value="로그인">
    <input type="reset" value="다시 작성">
</form>
</body>
</html>
