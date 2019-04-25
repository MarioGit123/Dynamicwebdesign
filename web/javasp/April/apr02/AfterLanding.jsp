<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-02
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>After landing</title>
</head>
<body>
<%
    String name = request.getParameter("username");
    String pwd = request.getParameter("usepwd");
    String namew = name.substring(0, 4);
    if (namew.equals("trkj") || name != null && pwd != null) {
        out.println(name);
        out.println(pwd);
    } else {
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", "landing_ok.jsp");
    }
%>
</body>
</html>
