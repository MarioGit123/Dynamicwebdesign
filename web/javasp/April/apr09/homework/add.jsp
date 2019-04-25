<%@ page import="com.ShopCart" %>
<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    //从session中获取购物车对象
    Object obj = session.getAttribute("shopcart");
    if (obj == null) {
        ShopCart cart = new ShopCart();
        session.setAttribute("shopcart", cart);
        obj = cart;
    }
    ShopCart myCart = (ShopCart) obj;//强制转换

    String PID = request.getParameter("pid");
    if (null == PID || "".equals(PID)) {
        response.sendRedirect("list.jsp");
    }
    Integer pid = Integer.valueOf(PID);
    myCart.addCart(pid);

    session.setAttribute("shopcart", myCart);
%>

<a href="list.jsp">继续购物</a><br>
<a href="cart.jsp">查看购物车</a>
</body>
</html>
