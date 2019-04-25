<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-10
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
    <style>
        input{
            outline:none;
            border:none;
            border-bottom:solid 1px black;
        }
        input[type='submit']{
            border:none;
            background:green;
            border-radius:5px;
            color:#fff;
            height:26px;
            line-height:26px;
            width:60px;
            text-align:center;
        }
    </style>
</head>
<body>
<fieldset>
    <legend>登录页面</legend>
    <form method="post">
        <p>用户名：
            <input type="text" name="username" placeholder="请输入正确的用户名"></p>
        <p>密&nbsp;&nbsp;&nbsp;码：
            <input type="password" name="userpwd"  placeholder="请输入正确的密码"></p>
        <p>
            <input type="submit" value="登录">
        </p>
    </form>
</fieldset>
<%
    String name = request.getParameter("username");
    String pwd = request.getParameter("userpwd");
    if(name!=null && pwd!=null){
        //获取了用户昵称
        String nickName="凌波微步";
        String n = URLEncoder.encode(nickName);
        //将用户昵称添加到cookie中
        Cookie c = new Cookie("username",n);
        c.setMaxAge(Integer.MAX_VALUE);
        response.addCookie(c);
        response.sendRedirect("list.jsp");
    }
%>
</body>
</html>
