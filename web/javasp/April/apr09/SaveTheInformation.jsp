<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save the information</title>
</head>
<body>
<%--
 请根据下列的要求实现对应的功能：
    （1）请在Cookie中保存如下的信息，并使用Chrome进行查看，上传查看结果图。
        A、您的姓名
        B、您的年龄
        C、您的生日
        D、您的手机号码
    （2）将上述信息读取出来并显示在JSP页面中--%>

    <div>
        <form method="post" action="SaveCookie.jsp">
            <p> 您的姓名<input type="text" name="name"></p>
            <p> 您的年龄<input type="text" name="age"></p>
            <p> 您的生日<input type="text" name="birthday"></p>
            <p> 您的手机号码<input type="text" name="phone"></p>
            <input type="submit" value="提交">
        </form>
    </div>
</body>
</html>
