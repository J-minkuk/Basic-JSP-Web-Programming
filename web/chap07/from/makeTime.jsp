<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-10
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Calendar" %>
<%
    Calendar cal = Calendar.getInstance();
    request.setAttribute("time", cal);
%>
<jsp:forward page="/chap07/to/viewTime.jsp"/>
