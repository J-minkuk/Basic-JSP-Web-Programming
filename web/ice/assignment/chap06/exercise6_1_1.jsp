<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-07
  Time: ���� 11:19
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
            <td align="center"><strong>ȸ������ ������</strong></td>
        </tr>
    </table>

    <table width="400" border="1">
        <tr>
            <td bgcolor="cccccc">�̸�</td>
            <td bgcolor="ededed"><input type="text" name="name" size="15">2~4���ڷ� �Է��ϼ���.</td>
        </tr>
        <tr>
            <td bgcolor="cccccc">����</td>
            <td bgcolor="ededed"><input type="text" name="age" size="15"></td>
        </tr>
        <tr>
            <td bgcolor="cccccc">����</td>
            <td bgcolor="ededed"><input type="text" name="job" size="15"></td>
        </tr>
        <tr>
            <td bgcolor="cccccc">�޴���ȭ</td>
            <td bgcolor="ededed"><input type="text" name="cell" size="15">- ���� �Է��ϼ���.</td>
        </tr>
    </table>
    <br>
    <table width="400">
        <tr>
            <td align="center"><input type="submit" value="Ȯ��"></td>
            <td><input type="reset" value="�ٽ� �ۼ�"></td>
        </tr>
    </table>
</form>
</body>
</html>
