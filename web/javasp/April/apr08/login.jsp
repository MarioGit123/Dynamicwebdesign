<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-08
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        div {
            margin: auto;
            width: 500px;
            height: 300px;
        }
    </style>
</head>
<body>

<div>
    <form action="login_ok.jsp" method="post">
        <input type="text" name="name">
        <br>
        <input type="password" name="pwd">
        <input type="submit">
    </form>
</div>
</body>
</html>
