<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-17
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery-2.2.3.min.js"></script>
    <script>
     /*   $(function () {
            $.ajax({
                type:"post",
                url:"http://localhost:8080/web/newservelt",
                success:function (data) {
                    $("#box").html(data);
                    console.log(data);
                }
            })
        })*/
    </script>
</head>
<body>
<%
    request
    if (session.getAttribute("list")==null){
        response.sendRedirect("http://localhost:8080/web/newservelt");
    }
%>
<div>
    <h2>新闻大爆炸</h2>
    <div id="box">
        <c:forEach items="${list}" var="ee" varStatus="status">
            <p>${ee.getNid()}${ee.getNinfo()}</p>
        </c:forEach>
    </div>
</div>
</body>
</html>
