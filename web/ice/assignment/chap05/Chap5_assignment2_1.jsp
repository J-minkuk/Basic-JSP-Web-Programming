<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: 오전 2:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>5장 실무 프로젝트 과제 2</title>
</head>
<body>
<h1>영화 정보 페이지</h1>
<form action="Chap5_assignment2_2.jsp" method="post">
    관람하고 싶은 영화를 선택하세요.
    <p>
        <select name="title">
            <option value="spider3">스파이더맨 3</option>
            <option value="son">아들</option>
            <option value="doubletarget">더블타겟</option>
        </select>
    </p>
    <input type="submit" value="확인">
</form>
</body>
</html>
