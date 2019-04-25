<%@ page import="com.projectcart.ShoppingBag" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-10
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>del</title>
</head>
<body>
<%
    Object obj = session.getAttribute("shopbag");
    if(obj!=null){
        Integer cid=0;
        String CID = request.getParameter("cid");
        if(CID!=null){
            cid= Integer.valueOf(CID);
        }
        ShoppingBag bag = (ShoppingBag)obj;
        bag.removeCommodity(cid);
    }
    response.sendRedirect("cart.jsp");
%>
</body>
</html>
