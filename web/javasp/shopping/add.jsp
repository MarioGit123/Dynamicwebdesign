<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.projectcart.ShoppingBag" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-10
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add</title>
    <style>
        .header{
            height:36px;
            background:#f5f5f5;
            margin-bottom:20px;
            line-height:36px;
        }

        .header .login{
            width:180px;
            float:left;
            color:red;
            font-weight:bold;
        }

        .header .shopcart{
            float:right;
        }

        .header .shopcart span{
            font-weight:bold;
            color:red;
        }

        .content{
            width:960px;
            margin:0 auto;
        }
    </style>
</head>
<body>
<%!
    String info ="亲，请登录";
    int count=0;
%>
<%
    boolean flag=false;
    Cookie[] arr = request.getCookies();
    if(arr!=null){
        for(Cookie c:arr){
            if("username".equals(c.getName())){
                String name = URLDecoder.decode(c.getValue());
                info="<a href=''>"+name+",欢迎您</a>";
                flag=true;
            }
        }
    }
    if(!flag){
        response.sendRedirect("login.jsp");
    }else{

        Object obj = session.getAttribute("shopbag");
        if(obj==null){
            ShoppingBag bb = new ShoppingBag();
            obj=bb;
            session.setAttribute("shopbag", bb);
        }
        ShoppingBag bag = (ShoppingBag) obj;
        String CID = request.getParameter("cid");
        if(CID==null){
            response.sendRedirect("list.jsp");
        }
        bag.add2Bag(Integer.valueOf(CID));
        count=bag.getAllCommodity().size();
    }
%>
<div class="header">
    <div class="content">
        <div class="login"><%=info %></div>
        <div class="shopcart">购物车<span><%=count %></span></div>
    </div>
</div>
<a href="list.jsp">继续购物</a>
<a href="cart.jsp?r=<%=Math.random()%>">查看购物袋</a>
</body>
</html>
