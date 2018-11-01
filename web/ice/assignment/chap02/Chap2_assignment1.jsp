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
<title>2장 실무 프로젝트 과제1</title>
</head>
<body>
	<%
		String input = "Hello, Welcome to JSP World! Lets Go!";

		int length = input.length();
		int index = input.indexOf("JSP");
		String lowerInput = input.toLowerCase();
		String upperInput = input.toUpperCase();

		out.print("입력되어 있는 문자열의 길이는 " + length + "입니다." + "<br>");
		out.print("'JSP'라는 문자는 " + index + "번째에 위치해 있습니다." + "<br><br>");
		out.print("입력 문자열을 소문자로 변환한 결과는 " + lowerInput + "입니다." + "<br>");
		out.print("입력 문자열을 대문자로 변환한 결과는 " + upperInput + "입니다.");
	%>
</body>
</html>