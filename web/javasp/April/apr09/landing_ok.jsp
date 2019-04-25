<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ok</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String account = request.getParameter("account");
    String password = request.getParameter("password");
    String time = request.getParameter("time");
    out.println("账号："+account);
    out.println("密码："+password);
    out.println("有效时间："+time);
    if (account == null || password == null || time == null) {
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", "landing.jsp");
    }
    Cookie cname = new Cookie("account", account);
    cname.setMaxAge(10);
    cname.setMaxAge(10);
    Cookie cpwd = new Cookie("password", password);

    if ("一天".equals(time)) {
        cname.setMaxAge(60 * 60 * 24);
        cpwd.setMaxAge(60 * 60 * 24);
    }
    if ("永久有效".equals(time)) {
        cname.setMaxAge((int) (Math.pow(2, 31) - 1));
        cpwd.setMaxAge(Integer.MAX_VALUE);
    }
    response.addCookie(cname);
    response.addCookie(cpwd);
%>
</body>
</html>
