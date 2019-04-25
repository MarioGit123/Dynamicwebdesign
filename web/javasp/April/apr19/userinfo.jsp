<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-19
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>userinfo</title>
</head>
<body>
<%--
 在JSP中有一个表单，用户可以输入用户的姓名、电话、性别和地址，通过另一个JSP接收这些表单数据，请使用JSTL实现下列的功能：
A、如果用户姓名长度小于10，输出“用户过短”的提示；
B、如果地址来自“株洲”（判断是否以“株洲”开头），则输出“您是本地人”；
C、如果用户为男，输出“帅哥”，否则，输出“美女”；
D、根据电话判断用户使用的运营商（联通、移动、电信）。

--%>
<form action="beforeuser.jsp"  method="post">
    <p>
       姓名： <input type="text" name="name">
    </p>
    <p>
        电话：<input type="text" name="phone">
    </p>
    <p>
        性别:<input type="radio" value="男" name="sex">男<input type="radio" value="女" name="sex">女
    </p>
    <p>
        地址：<input type="text" name="address">
    </p>
    <input type="submit" value="提交">
</form>
</body>
</html>
