<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-08
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设置</title>

    <%
//        request.setCharacterEncoding("utf-8");

        String str = URLEncoder.encode(request.getParameter("name"), StandardCharsets.UTF_8);
        String strpwd = URLEncoder.encode(request.getParameter("pwd"), StandardCharsets.UTF_8);


        if (str != null && strpwd != null && str.equals("admin") && strpwd.equals("123456")) {
            Cookie cname = new Cookie("cname", str);
            cname.setMaxAge(5);
            Cookie cpwd = new Cookie("cpwd", strpwd);
            cpwd.setMaxAge(10);
            response.addCookie(cname);
            response.addCookie(cpwd);

            out.println("wew");


            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "index.jsp");

        } else {
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "landing.jsp");
        }

    %>
</head>
<body>

</body>
</html>
