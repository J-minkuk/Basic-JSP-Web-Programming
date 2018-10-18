<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-10
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
body_sub 에서 name 파라미터 값 <%= request.getParameter("name") %>

<br>

name 파라미터 값 목록:
<ul>
    <%
        String[] names = request.getParameterValues("name");
        for (String name : names) {
    %>
    <li><%= name %></li>
    <% } %>
</ul>
