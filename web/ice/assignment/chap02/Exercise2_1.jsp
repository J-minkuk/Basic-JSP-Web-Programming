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
<title>Exercise2_1 ���α�</title>
</head>
<body>

<%
String strNum;
int intNum;
double dblNum;
float fltNum;
byte bytNum;

strNum = "1";
intNum = Integer.parseInt(strNum);
dblNum = Double.parseDouble(strNum);
bytNum = Byte.parseByte(strNum);
%>
String : <%= strNum %><br>
Integer : <%= intNum %><br>
Double : <%= dblNum %><br>
Byte : <%= bytNum %><br><br>

<%
strNum = "-1";
intNum = Integer.parseInt(strNum);
dblNum = Double.parseDouble(strNum);
bytNum = Byte.parseByte(strNum);
%>
String : <%= strNum %><br>
Integer : <%= intNum %><br>
Double : <%= dblNum %><br>
Byte : <%= bytNum %><br><br>

<%
strNum = "1.234";

dblNum = Double.parseDouble(strNum);
fltNum = Float.parseFloat(strNum);
%>
String : <%= strNum %><br>
Double : <%= dblNum %><br>
Float : <%= fltNum %><br><br>

<%
strNum = "-1.234";

dblNum = Double.parseDouble(strNum);
fltNum = Float.parseFloat(strNum);
%>
String : <%= strNum %><br>
Double : <%= dblNum %><br>
Float : <%= fltNum %><br>

</body>
</html>