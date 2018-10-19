<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-19
  Time: 오후 7:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="member" scope="request" class="chap08.ex1.member.MemberInfo"/>
<%
    member.setId("mingooddev");
    member.setName("조민국");
%>
<jsp:forward page="useObject.jsp"/>