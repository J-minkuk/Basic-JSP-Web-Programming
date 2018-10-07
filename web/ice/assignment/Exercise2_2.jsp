<!--
2018/09/19 과제
웹 프로그래밍 - 박정식 교수님
소프트웨어공학과 201132034 조민국
-->
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Exercise2_2 조민국</title>
</head>
<body>

<%
int sum = 0;
int num = 1;

for (num = 1; num < 50; num = num + 5) {
	if (num == 1) {
		sum = sum + num;
		out.print(num);
	} else if ((num % 2) == 1) {
		sum = sum + num;
		out.print("+" + num);
	} else {
		sum = sum - num;
		out.print("-" + num);
	}
}
out.print("=" + sum);
%>

</body>
</html>