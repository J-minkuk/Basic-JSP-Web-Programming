<%--
  Created by IntelliJ IDEA.
  User: MinGOOD
  Date: 2018-10-18
  Time: 오후 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<html>
<head>
    <title>application 기본 객체 사용하여 자원 읽기 2</title>
</head>
<body>
<%
    String resourcePath = "/chap05/message/notice.txt";
    char[] buff = new char[128];
    int len = -1;
    URL url = application.getResource(resourcePath);

    try {
      InputStreamReader br = new InputStreamReader(url.openStream(), "UTF-8");

        while ((len = br.read(buff)) != -1) {
          out.print(new String(buff, 0, len));
        }
    } catch (IOException ex) {
      out.println("Exception 발생: " + ex.getMessage());
    }
%>
</body>
</html>
