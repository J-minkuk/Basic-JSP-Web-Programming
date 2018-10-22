<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-22
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>시작페이지</title>
</head>
<body>
사칙연산
<form action="jmk2result.jsp" method="post">
    <input type="number" name="input1">
    <select name="input2" id="input2">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <input type="number" name="input3">
    <input type="submit" value="=">
</form>
</body>
</html>
