<!--
2018/09/19 ����
�� ���α׷��� - ������ ������
����Ʈ������а� 201132034 ���α�
-->
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>2�� �ǹ� ������Ʈ ����1</title>
</head>
<body>
	<%
		String input = "Hello, Welcome to JSP World! Lets Go!";

		int length = input.length();
		int index = input.indexOf("JSP");
		String lowerInput = input.toLowerCase();
		String upperInput = input.toUpperCase();

		out.print("�ԷµǾ� �ִ� ���ڿ��� ���̴� " + length + "�Դϴ�." + "<br>");
		out.print("'JSP'��� ���ڴ� " + index + "��°�� ��ġ�� �ֽ��ϴ�." + "<br><br>");
		out.print("�Է� ���ڿ��� �ҹ��ڷ� ��ȯ�� ����� " + lowerInput + "�Դϴ�." + "<br>");
		out.print("�Է� ���ڿ��� �빮�ڷ� ��ȯ�� ����� " + upperInput + "�Դϴ�.");
	%>
</body>
</html>