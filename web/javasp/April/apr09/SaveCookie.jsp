<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save cookie</title>
</head>
<body>
<%
    /*
    *  请根据下列的要求实现对应的功能：
        1）请在Cookie中保存如下的信息，并使用Chrome进行查看，上传查看结果图。
        A、您的姓名
        B、您的年龄
        C、您的生日
        D、您的手机号码

        2）将上述信息读取出来并显示在JSP页面中
    * */
    request.setCharacterEncoding("utf-8");

    String name =request.getParameter("name");
    String age=request.getParameter("age");
    String birthday=request.getParameter("birthday");
    String phone=request.getParameter("phone");

    if ("".equals(name)||"".equals(age)||"".equals(birthday)||"".equals(phone)){
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", "SaveTheInformation.jsp");
    }
    Cookie cname=new Cookie("cname",name);
    cname.setMaxAge(10);
    Cookie cage=new Cookie("cage",age);
    cage.setMaxAge(10);

    Cookie cbirthday=new Cookie("cbirthday",birthday);
    cbirthday.setMaxAge(10);

    Cookie cphone=new Cookie("cphone",phone);
    cphone.setMaxAge(10);

    response.addCookie(cname);
    response.addCookie(cage);
    response.addCookie(cbirthday);
    response.addCookie(cphone);
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "index1.jsp");



%>
</body>
</html>
