<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-10
  Time: 오전 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>INFO</title>
</head>
<body>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td>제품번호</td>
        <td>XXXX</td>
    </tr>
    <tr>
        <td>가격</td>
        <td>10,000원</td>
    </tr>
</table>

<jsp:include page="infoSub.jsp" flush="false">
    <jsp:param name="type" value="A"/>
</jsp:include>
</body>
</html>
