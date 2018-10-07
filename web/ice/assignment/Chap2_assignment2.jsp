<!--
2018/09/19 과제
웹 프로그래밍 - 박정식 교수님
소프트웨어공학과 201132034 조민국
-->
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ page import="java.util.Calendar"%>
<%
Calendar cal = Calendar.getInstance();

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);

String strYear = request.getParameter("year");
String strMonth = request.getParameter("month");

if (strYear != null) {
	year = Integer.parseInt(strYear);
	month = Integer.parseInt(strMonth);
}

Calendar temp = Calendar.getInstance();
temp.set(year, month, 1);
int blank = temp.get(Calendar.DAY_OF_WEEK);
int lastDay = temp.getActualMaximum(Calendar.DATE);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>2장 실무 프로젝트 과제2</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<div class="float-left">
		<a href="/CseWebPro/cc/assignment/Chap2_assignment2.jsp?year=<%= year - 1 %>&month=<%= month %>">이전</a>
		<span><%= year %>년</span>
		<a href="/CseWebPro/cc/assignment/Chap2_assignment2.jsp?year=<%= year + 1 %>&month=<%= month %>">다음</a>
	</div>
	<div class="text-center">
		<a href="/CseWebPro/cc/assignment/Chap2_assignment2.jsp?year=<%= year %>&month=<%= month - 1 %>">이전</a>
		<span><%= month + 1 %>월</span>
		<a href="/CseWebPro/cc/assignment/Chap2_assignment2.jsp?year=<%= year %>&month=<%= month + 1 %>">다음</a>
	</div>
	<div class="float-right">
		<span><%= year %>-<%= month %>-<%= date %></span>
	</div>
	<div class="text-center">
		<table class="table table-bordered">
			<tr>
				<%
					String[] days = { "일", "월", "화", "수", "목", "금", "토" };
					for (int i = 0; i < 7; ++i) {
						out.print("<td>" + days[i] + "</td>");
					}
				%>
			</tr>
			<tr>
				<% for (int i = 1; i < blank; ++i) { %>
						<td></td>
				<% } %>
				<% for (int i = 1; i <= lastDay; ++i) { %>
				<td><%= i %>
					<% if ((blank + i - 1) % 7 == 0) { %>
					</td></tr><tr>
				<% }} for (int i = 1; i < (7 - blank); ++i) { %>
				<td></td>
				<% } %>
			</tr>
		</table>
	</div>
</body>
</html>