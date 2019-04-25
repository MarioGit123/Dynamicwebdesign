<%@ page import="com.projectcart.ShoppingBag" %>
<%@ page import="com.projectcart.Commodity" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-10
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cart</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        ul {
            list-style: none;
        }

        a {
            text-decoration: none;
        }

        input {
            outline: none;
        }

        .cart .main ul {
            padding: 10px 0px;
            border-bottom: dashed 1px #444;
        }

        .cart ul li {
            float: left;
            width: 120px;
        }

        .cart ul:after {
            content: '.';
            clear: both;
            display: block;
            visibility: hidden;
            height: 0px;
        }

        .cart ul li.name {
            width: 200px;

        }

        .cart ul li.price {
            color: red;
            font-weight: bold;
        }

        .cart ul li.count input {
            width: 30px;
        }

        .cart img {
            width: 60px;
            height: 60px;
        }

        .cart {
            width: 960px;
            margin: 0 auto;
        }

        .cart .head {
            background: #fafafa;
            height: 60px;
            line-height: 60px;
            border-bottom: solid 2px #999;
        }

        .total {
            width: 960px;
            margin: 0 auto;
            position: fixed;
            bottom: 0px;
            height: 80px;
            background: orange;
            line-height: 80px;
        }

        .total .right {
            float: right;
            margin-right: 30px;
            color: #fff;
            font-weight: bolder;
        }

        .header {
            height: 36px;
            background: #f5f5f5;
            margin-bottom: 20px;
            line-height: 36px;
        }

        .header .login {
            width: 180px;
            float: left;
            color: red;
            font-weight: bold;
        }

        .header .shopcart {
            float: right;
        }

        .header .shopcart span {
            font-weight: bold;
            color: red;
        }

        .content {
            width: 960px;
            margin: 0 auto;
        }
    </style>
    <script src="../js/jquery-2.2.3.min.js"></script>
    <script>
        $(function () {
            $(".del").click(function () {
                if (confirm("确定要删除该商品么？")) {
                    var cid = $(this).attr("cid");
                    window.location.href = "del.jsp?cid=" + cid;
                }
            });
            $(".xuan").on("click", function () {
                var tot = 0;
                $(":checked").each(function (index, value) {
                    tot += parseFloat(($(value).parents("ul").find(".sum").text()));
                });
                $(".right span").text(tot.toFixed(2));
            });
            //减
            $(".less").on("click",function () {
                console.log($(this).parents(".count").find(":text").text());
            })
        })

    </script>
</head>
<body>
<%!
    String info = "亲，请登录";
    Integer count = 0;
%>
<%
    boolean flag = false;
    Cookie[] arr = request.getCookies();
    if (arr != null) {
        for (Cookie c : arr) {
            if ("username".equals(c.getName())) {
                String name = URLDecoder.decode(c.getValue());
                info = "<a href=''>" + name + ",欢迎您</a>";
                flag = true;
            }
        }
    }
    if (!flag) {
        response.sendRedirect("login.jsp");
    }
%>
<div class="header">
    <div class="content">
        <div class="login"><%=info %>
        </div>
        <div class="shopcart">购物车<span><%=count %></span></div>
    </div>
</div>
<div class="cart">
    <div class="head">
        <ul>
            <li>多选</li>
            <li>图片</li>
            <li class="name">名称</li>
            <li>价格</li>
            <li class="count">数量</li>
            <li class="sum">小计</li>
            <li>操作</li>
        </ul>
    </div>
    <div class="main">
        <%
            Object obj = session.getAttribute("shopbag");
            if (obj == null) {
                out.println("购物车是空的，请选择<a href='list.jsp'>继续购物</a>");
            } else {

                ShoppingBag bag = (ShoppingBag) obj;
                Collection<Commodity> list = bag.getAllCommodity();
                if (list != null) {
                    count = list.size();
                }
                for (Commodity com : list) {
        %>
        <ul>
            <li>
                <input type="checkbox" class="xuan">
            </li>
            <li>
                <img src="../imgs/<%=com.getImgurl()%>">
            </li>
            <li class="name"><%=com.getName() %>
            </li>
            <li class="price">￥<span><%=com.getPrice() %></span></li>
            <li class="count">
                <button class="less">-</button>
                <input type="text" value="<%=com.getCount()%>">
                <button class="add">+</button>
            </li>
            <li class="sum"><%=(com.getPrice() * com.getCount()) %>
            </li>
            <li class="del" cid="<%=com.getCid()%>">删除</li>
        </ul>
        <%
                }
            }
        %>

    </div>
    <input type="hidden" value="<%=count %>" id="hid">
    <div class="total">
        <div class="right">
            总计：<span>0</span>
        </div>
    </div>
</div>
<script type="text/javascript">
    var c = $("#hid").val();//利用隐藏域，更新购物车的数量
    $(".header").find(".shopcart>span").html(c);
</script>
</body>
</html>
