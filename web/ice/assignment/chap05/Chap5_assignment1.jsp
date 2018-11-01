<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: 오전 2:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>5장 실무 프로젝트 과제 1</title>
</head>
<body>
<table width="500" border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td colspan="2" height="30">
            <jsp:include page="Chap5_assignment1_top.jsp" flush="false"/>
        </td>
    </tr>
    <tr>
        <td width="150" valign="top">
            <jsp:include page="Chap5_assignment1_left.jsp" flush="false"/>
        </td>
        <td width="350" valign="center">
            <jsp:include page="Chap5_assignment1_content.jsp" flush="false"/>
        </td>
    </tr>
    <tr>
        <td colspan="2" height="30">
            <jsp:include page="Chap5_assignment1_bottom.jsp" flush="false"/>
        </td>
    </tr>
</table>
</body>
</html>
