<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-10
  Time: 오전 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    <jsp:forward> 액션 태그를 실행하면
    생성했던 출력 결과는 모두 제거된다.
--%>
<html>
<head>
    <title>from.jsp 의 제목</title>
</head>
<body>
이 페이지는 from.jsp 가 생성한 것입니다.
<jsp:forward page="/chap07/ex6/to/to.jsp"/>
</body>
</html>
