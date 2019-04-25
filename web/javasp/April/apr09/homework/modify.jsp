<%@ page import="com.ShopCart" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>modify</title>
</head>
<body>
<%

    ShopCart cart = null;
    Object obj = session.getAttribute("shopcart");
    cart = (ShopCart) obj;

    if (cart != null) {

        String pid = request.getParameter("pid");
        String count = request.getParameter("count");
        Integer pidnum = Integer.valueOf(pid);
        Integer num = Integer.valueOf(count);
        cart.editCount(pidnum, num);
    }
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "cart.jsp");
%>

</body>
</html>
