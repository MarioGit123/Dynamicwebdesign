<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.projectcart.ShoppingBag" %>
<%@ page import="com.projectcart.Commodity" %>
<%@ page import="com.projectcart.CommodityStorage" %>
<%@ page import="java.util.Collection" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-10
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物界面</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        ul{
            list-style:none;
        }
        a{
            text-decoration:none;
        }
        input{
            outline:none;
        }
        .content{
            width:960px;
            margin:0 auto;
        }
        .content ul:after{
            content:'.';
            display:block;
            visibility: hidden;
            height:0px;
            clear:both;
        }
        .content ul li{
            float:left;
            width:25%;
            box-sizing:border-box;
            margin-bottom:5px;
        }

        .content img{
            width:210px;
        }

        .content .buy{
            width:80px;
            text-align:center;
            border:solid orange 1px;
            border-radius:4px;
        }

        .content .price{
            font:20px/1.4 tahoma;
            color:red;
            font-weight:bolder;
        }

        .content .name{
            font-size:13px;
            height:20px;
        }

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
        #boxm{
            width: 800px;

        }
    </style>
    <script src="../js/jquery-2.2.3.min.js"></script>
    <script>
        $(function(){
            $(".buy").click(function(){
                //获取点击的按钮上面的自定义属性
                var cid =$(this).attr("cid");
                window.location.href="add.jsp?cid="+cid;
            })
        })
    </script>
</head>
<body>
<%!
    String info ="亲，请登录";
    Integer count=0;
%>
<%
    Cookie[] arr = request.getCookies();
    if(arr!=null){
        for(Cookie c:arr){
            if("username".equals(c.getName())){
                String name = URLDecoder.decode(c.getValue());
                info="<a href=''>"+name+",欢迎您</a>";
            }
        }
    }
    Object obj = session.getAttribute("shopbag");
    if(obj!=null){
        ShoppingBag bag=(ShoppingBag) obj;
        count = bag.getAllCommodity().size();
    }
%>
<div class="header">
    <div class="content">
        <div class="login"><%=info %></div>
        <div class="shopcart">购物车<span><%=count %></span></div>
    </div>
</div>
<div class="content">
    <ul>
        <%
            Collection<Commodity> list = CommodityStorage.getStorage();
            for(Commodity com:list){
        %>
        <li>
            <img src="../imgs/<%=com.getImgurl()%>">
            <div class="price"><span>￥</span><%=com.getPrice() %></div>
            <div class="name"><%=com.getName() %></div>
            <div class="buy" cid="<%=com.getCid() %>">购买</div>
        </li>
        <%
            }
        %>
    </ul>
</div>
</body>
</html>
