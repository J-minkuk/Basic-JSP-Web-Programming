<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: ���� 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>Exercise5_1 ���α�</title>
</head>
<body>
<table width="500" border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td width="200">�̸�</td>
        <td>ȫ�浿</td>
    </tr>
    <tr>
        <td>������</td>
        <td>A��</td>
    </tr>
</table>

<jsp:include page="Exercise5_1_2.jsp" flush="false">
    <jsp:param name="bloodType" value="A"/>
</jsp:include>
</body>
</html>
