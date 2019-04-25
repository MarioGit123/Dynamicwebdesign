<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-02
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>After user registration</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    String name = request.getParameter("name");
    String pwd = request.getParameter("pwd");
    String sex = request.getParameter("sex");
    String hobby[] = request.getParameterValues("hobby");

    String record = request.getParameter("record");
    String introduce = request.getParameter("introduce");
    if (name != null && pwd != null && hobby != null) {
        out.println(name);
        out.println("密码" + pwd);
        out.println("性别" + sex);
        for (String aHobby : hobby) {
            out.println(aHobby);

        }
        out.println("学历" + record);
        out.println("自我介绍" + introduce);
    } else {
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", "AfterUserRegistration.jsp");
    }
%>
</body>
</html>
