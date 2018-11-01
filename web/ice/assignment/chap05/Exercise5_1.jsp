<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: ¿ÀÀü 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>Exercise5_1 Á¶¹Î±¹</title>
</head>
<body>
<table width="500" border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td width="200">ÀÌ¸§</td>
        <td>È«±æµ¿</td>
    </tr>
    <tr>
        <td>Ç÷¾×Çü</td>
        <td>AÇü</td>
    </tr>
</table>

<jsp:include page="Exercise5_1_2.jsp" flush="false">
    <jsp:param name="bloodType" value="A"/>
</jsp:include>
</body>
</html>
