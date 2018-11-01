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
<title>Exercise2_1 조민국</title>
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