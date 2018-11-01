<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: 오전 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>Exercise5_2_1 조민국</title>
</head>
<body>
<form action="Exercise5_2_2.jsp" method="post">
    <table width="300">
        <tr>
            <td align="center"><strong>로그인 페이지</strong></td>
        </tr>
    </table>
    <table width="300" border="1">
        <tr>
            <td bgcolor="cccccc">사용자 ID</td>
            <td bgcolor="ededed"><input type="text" name="id" size="20"></td>
        </tr>
        <tr>
            <td bgcolor="cccccc">비밀번호</td>
            <td bgcolor="ededed"><input type="password" name="password" size="20"></td>
        </tr>
    </table>
    <br>
    <table width="300" border="0">
        <tr>
            <td align="center">
                <input type="submit" value="로그인">
                <input type="reset" value="다시 작성">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
