<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-10
  Time: 오전 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String type = request.getParameter("type");
    if (type == null) {
      return;
    }
%>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td>타입</td>
        <td><b><%= type %></b></td>
    </tr>
    <tr>
        <td>특징</td>
        <td>
            <% if (type.equals("A")) { %>
            강한 내구성
            <% } else if (type.equals("B")) { %>
            뛰어난 대처 능력
            <% } %>
        </td>
    </tr>
</table>
