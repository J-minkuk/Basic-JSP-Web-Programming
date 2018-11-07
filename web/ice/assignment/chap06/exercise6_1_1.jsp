<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-07
  Time: 오후 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=euc-kr" language="java" %>
<html>
<head>
    <title>exercise6_1_1</title>
</head>
<body>
<form action="exercise6_1_2.jsp" method="post">
    <table width="400" border="1">
        <tr>
            <td align="center"><strong>회원가입 페이지</strong></td>
        </tr>
    </table>

    <table width="400" border="1">
        <tr>
            <td bgcolor="cccccc">이름</td>
            <td bgcolor="ededed"><input type="text" name="name" size="15">2~4글자로 입력하세요.</td>
        </tr>
        <tr>
            <td bgcolor="cccccc">나이</td>
            <td bgcolor="ededed"><input type="text" name="age" size="15"></td>
        </tr>
        <tr>
            <td bgcolor="cccccc">직업</td>
            <td bgcolor="ededed"><input type="text" name="job" size="15"></td>
        </tr>
        <tr>
            <td bgcolor="cccccc">휴대전화</td>
            <td bgcolor="ededed"><input type="text" name="cell" size="15">- 없이 입력하세요.</td>
        </tr>
    </table>
    <br>
    <table width="400">
        <tr>
            <td align="center"><input type="submit" value="확인"></td>
            <td><input type="reset" value="다시 작성"></td>
        </tr>
    </table>
</form>
</body>
</html>
