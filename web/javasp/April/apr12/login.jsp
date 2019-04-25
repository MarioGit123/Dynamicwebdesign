<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-12
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<div>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <p>
            账号：<input type="text" name="uname">
        </p>
        <p>
            密码：<input type="password" name="upwd">
        </p>
        <p>
            <input type="submit" value="登陆">
        </p>
    </form>
</div>
</body>
</html>
