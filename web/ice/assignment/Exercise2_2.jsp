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
<title>Exercise2_2 ���α�</title>
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