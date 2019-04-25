<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-02
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registered users</title>
</head>
<%--
        请定义一个表单，用于注册用户，填写的内容有：用户名、密码（password）、性别(radio)、爱好（checkbox，选项有：运动、音乐、上网、购物、旅游）、学历、 自我介绍，
    请将该表单提交到另一个jsp页面并显示用户的输入结果。
--%>
<body>
<form action="AfterUserRegistration.jsp" method="post">
    <p>
        用户名 <input type="text" name="name">
    </p>
    <p>
        密 码  <input type="password" name="pwd">
    </p>
    <p>
        性别   <input type="radio"  name="sex">男
               <input type="radio" name="sex">女
    </p>
    <p>
        爱好
        <input type="checkbox" value="运动" name="hobby">运动
        <input type="checkbox" value="音乐" name="hobby">音乐
        <input type="checkbox" value="上网" name="hobby">上网
        <input type="checkbox" value="购物" name="hobby">购物
        <input type="checkbox" value="旅游" name="hobby">旅游
    </p>
    <p>
        学历 <input type="text" name="record">
    </p>
    <p>
        自我介绍 <input type="text" name="introduce">
    </p>
    <input type="submit"value="注册">
</form>

</body>
</html>
