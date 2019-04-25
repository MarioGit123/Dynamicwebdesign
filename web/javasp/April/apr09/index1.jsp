<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sdf</title>
</head>
<body>
<%
    Cookie[] arr=request.getCookies();
    if (arr!=null){
        for(Cookie x:arr ){
            out.println(x.getName()+"<br>");
            out.println(x.getValue()+"<br>");
            out.println("-----------------------------------------------<br>");
        }
    }
%>
</body>
</html>
