<%@ page import="com.Product" %>
<%@ page import="java.util.Collection" %>
<%@ page import="com.ProductStorage" %>
<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品列表页</title>
    <style>
        table{
            border-collapse: collapse;
            text-align:center;
        }
        a{
            color:#2C2255;
        }

        a:hover{
            color:#a31525;
        }
    </style>
</head>
<body>
    <fieldset>
        <legend>所有商品</legend>
        <table >
            <tr>
                <th>商品编号</th>
                <th> 商品名字</th>
                <th>商品价格</th>
                <th>商品数量</th>
                <th>操作</th>
            </tr>
            <%
                Collection<Product> clist= ProductStorage.getValues();
                for(Product p:clist){
            %>
            <tr>
                <td><%=p.getPid()  %></td>
                <td><%=p.getName()  %></td>
                <td><%=p.getPrice()  %></td>
                <td><%=p.getCount()  %></td>
                <td>
                    <a href="add.jsp?pid=<%=p.getPid() %>">加入购物车</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>

    </fieldset>
</body>
</html>
