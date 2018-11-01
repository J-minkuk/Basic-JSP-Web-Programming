<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: 오전 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<%
    String bloodType = request.getParameter("bloodType");
    if (bloodType != null) {
%>
<br>
<table width="500" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td width="200">혈액형</td>
        <td><%= bloodType %>형</td>
    </tr>
    <tr>
        <td>특징</td>
        <td>
            <% if (bloodType.equals("A")) { %>
            성실하고 신중함
            <% } else if (bloodType.equals("B")) { %>
            창조적이며 집중력이 강함
            <% } else if (bloodType.equals("O")) { %>
            적극적이며, 개방적
            <% } else if (bloodType.equals("AB")) { %>
            합리적이며 기능적
            <% } %>
        </td>
    </tr>
</table>
<% } %>