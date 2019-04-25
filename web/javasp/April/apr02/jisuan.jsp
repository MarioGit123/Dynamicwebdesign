<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-02
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>结果</title>
</head>
<body>
<%
    String fu = request.getParameter("fuhao");
    int num1 = Integer.parseInt(request.getParameter("num1"));
    int num2 = Integer.parseInt(request.getParameter("num2"));

    switch (fu) {
        case "+":
            out.println(num1 + num2);
            break;
        case "-":
            out.println(num1 - num2);
            break;
        case "*":
            out.println(num1 * num2);

            break;
        case "/":
            out.println(num1 / num2);
            break;
    }
%>
</body>
</html>
