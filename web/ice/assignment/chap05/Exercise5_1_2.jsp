<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-11-01
  Time: ���� 2:14
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
        <td width="200">������</td>
        <td><%= bloodType %>��</td>
    </tr>
    <tr>
        <td>Ư¡</td>
        <td>
            <% if (bloodType.equals("A")) { %>
            �����ϰ� ������
            <% } else if (bloodType.equals("B")) { %>
            â�����̸� ���߷��� ����
            <% } else if (bloodType.equals("O")) { %>
            �������̸�, ������
            <% } else if (bloodType.equals("AB")) { %>
            �ո����̸� �����
            <% } %>
        </td>
    </tr>
</table>
<% } %>