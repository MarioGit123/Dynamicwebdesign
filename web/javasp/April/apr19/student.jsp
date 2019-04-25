<%@ page import="java.util.List" %>
<%@ page import="java.util.*" %>


<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-19
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>student</title>
</head>
<body>
<%
//    请将5个学生的姓名存入到List集合，再用JSTL循环读取该集合中的姓名。

    List<String> li=new ArrayList<>();
    li.add("张三");
    li.add("李四");
    li.add("王五");
    li.add("赵六");
    li.add("孔七");
    request.setAttribute("li",li);
    %>

<c:forEach var="stu" items="${li}">
    ${stu}<br>
</c:forEach>
</body>
</html>
