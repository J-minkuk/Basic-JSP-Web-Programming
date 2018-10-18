<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-10
  Time: 오전 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String code = request.getParameter("code");
    String viewPageURI = null;

    if (code.equals("A")) {
      viewPageURI = "/chap07/ex7/viewModule/a.jsp";
    } else if (code.equals("B")) {
      viewPageURI = "/chap07/ex7/viewModule/b.jsp";
    } else if (code.equals("C")) {
      viewPageURI = "/chap07/ex7/viewModule/c.jsp";
    }
%>
<jsp:forward page="<%= viewPageURI %>"/>