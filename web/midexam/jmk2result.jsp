<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-22
  Time: 오전 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String input1 = request.getParameter("input1");
    String input3 = request.getParameter("input3");

    float num1 = Float.parseFloat(input1);
    float num3 = Float.parseFloat(input3);
    float result = 0;

    String input2 = request.getParameter("input2");
    switch (input2) {
        case "+":
          result = num1 + num3; break;
        case "-":
          result = num1 - num3; break;
        case "*":
          result = num1 * num3; break;
        case "/":
          result = num1 / num3; break;
    }
%>
<html>
<head>
    <title>실행페이지</title>
</head>
<body>
연산결과<br>
<%= num1 %><%= input2 %><%= num3 %> = <%= result %>
</body>
</html>
