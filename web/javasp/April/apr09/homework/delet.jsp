<%@ page import="com.Product" %>
<%@ page import="java.util.Collection" %>
<%@ page import="com.ProductStorage" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.ShopCart" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delet</title>
</head>
<body>
<%
    String pid = request.getParameter("pid");
    Integer num= Integer.valueOf(pid);
    //Collection<Product> clist= ProductStorage.getValues();
    Object obj = session.getAttribute("shopcart");
    ShopCart cart=null;
    if(obj!=null){
        //将session中的对象强制转成购物车对象
        cart = (ShopCart)obj;
    }
    cart.getCarts().remove(num);

   /* for(Product x:clist){
        if (x.getPid().toString().equals(pid)){
            clist.remove(x.ge);
        }
    }*/
    session.setAttribute("shopcart", cart);

    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "cart.jsp");
%>
</body>
</html>
