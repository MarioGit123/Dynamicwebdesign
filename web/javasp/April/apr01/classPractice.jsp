<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-01
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>demo1</title>
    <script src="../js/jquery-2.2.3.min.js"></script>
    <script>

    </script>
</head>
<body>
<%!
    String date = null;
%>
<%
    SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
    out.print(sp.format(new Date()));
%>

</body>
</html>
