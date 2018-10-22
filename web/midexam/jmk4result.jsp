<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-22
  Time: 오전 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");

    Calendar cal = Calendar.getInstance();
    int year = cal.get(Calendar.YEAR);
    int month = cal.get(Calendar.MONTH) + 1;
    int day = cal.get(Calendar.DATE);

    String strYear = String.valueOf(year);
    String strMonth = String.valueOf(month);
    String strDay = String.valueOf(day);

    String resultDate = strYear + "-" +  strMonth + "-" + strDay;
%>
<jsp:useBean id="member" class="midexam.Member"/>
<jsp:setProperty name="member" property="*"/>
<jsp:setProperty name="member" property="currentDate" value="<%= resultDate %>"/>
<html>
<head>
    <title>결과페이지</title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td>아이디</td>
        <td><jsp:getProperty name="member" property="id"/></td>
    </tr>
    <tr>
        <td>비밀번호</td>
        <td><jsp:getProperty name="member" property="password"/></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><jsp:getProperty name="member" property="name"/></td>
    </tr>
    <tr>
        <td>전화번호</td>
        <td><jsp:getProperty name="member" property="phoneNumber"/></td>
    </tr>
    <tr>
        <td>가입일</td>
        <td><jsp:getProperty name="member" property="currentDate"/></td>
    </tr>
</table>
</body>
</html>
