<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-18
  Time: 오후 7:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%
    String value = "자바";
    String encodedValue = URLEncoder.encode(value, "utf-8");
    response.sendRedirect("/chap03/17index.jsp?name=" + encodedValue);
%>
