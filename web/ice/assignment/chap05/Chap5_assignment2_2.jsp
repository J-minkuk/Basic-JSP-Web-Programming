<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: ¿ÀÀü 2:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<%
    String linkPage = "Chap5_assignment2_" + request.getParameter("title") + ".jsp";
%>
<jsp:forward page="<%= linkPage %>"/>
