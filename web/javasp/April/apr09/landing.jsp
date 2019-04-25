<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        div{
            width: 300px;
            height: 300px;
            margin: auto;
        }
    </style>
</head>
<body>
    <div>
        <form method="post" action="landing_ok.jsp">
            <p>
               账号： <input type="text" name="account">
            </p>
            <p>
               密码： <input type="password" name="password">
            </p>
            <p>
                <input type="radio"name="time" value="跟随浏览器">跟随浏览器
                <input type="radio"name="time" value="一天">一天
                <input type="radio"name="time" value="永久有效">永久有效
            </p>
            <input type="submit" value="登陆">
        </form>
    </div>
</body>
</html>
