<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-22
  Time: 오전 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jmk1</title>
</head>
<body>
가능한 외국어를 모두 선택하시오.
<form action="jmk1result.jsp" method="post">
    <input type="checkbox" name="language" value="영어">영어
    <input type="checkbox" name="language" value="일본어">일본어
    <input type="checkbox" name="language" value="중국어">중국어
    <input type="checkbox" name="language" value="독일어">독일어
    <br>
    <input type="submit" value="확인">
</form>
</body>
</html>
