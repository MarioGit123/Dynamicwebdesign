<%@ page import="java.util.Collection" %>
<%@ page import="com.ShopCart" %>
<%@ page import="com.Product" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-09
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert title here</title>
    <style>
        table {
            border-collapse: collapse;
            text-align: center;
        }

        input {
            width: 40px;
            outline: none;
        }

        a {
            display: inline-block;
            border: solid 1px green;
            border-radius: 4px;
            text-align: center;
            padding: 2px 5px;
            cursor: pointer;
            color: black;
            text-decoration: none;
        }
    </style>
    <script>
        function editCount(pid) {
            var count = document.querySelector("#txt" + pid).value;
            //跳转到修改数量的页面
            window.location.href = "modify.jsp?pid=" + pid + "&count=" + count;
        }
        function shanchu(pid) {
            window.location.href = "delet.jsp?pid=" + pid;
        }
    </script>
</head>
<body>
<fieldset>
    <legend>购物车</legend>
    <%!
        ShopCart cart=null;
    %>

    <%
        //购物车
        //从session中获取购物车对象
        Object obj = session.getAttribute("shopcart");

        Collection<Product> list = null;
        if(obj!=null){
            //将session中的对象强制转成购物车对象
            cart = (ShopCart)obj;
            list = cart.getValues();
        }
        if(list==null || list.isEmpty()){
    %>
    <h3>购物车是空的。<a href="list.jsp">商品列表</a></h3>
    <%
    }else{
    %>
    <table border="1" width="100%">
        <tr>
            <th>商品编号</th>
            <th>商品名称</th>
            <th>商品价格</th>
            <th>商品数量</th>
            <th>操作</th>
            <th>删除</th>
        </tr>
        <%
            for(Product p:list){
        %>
        <tr>
            <td><%=p.getPid() %></td>
            <td><%=p.getName() %></td>
            <td><%=p.getPrice() %></td>
            <td>
                <input id="txt<%=p.getPid() %>" type="number" value="<%=p.getCount() %>">
            </td>
            <td>
                <!-- 利用脚本获取文本框中新的购物车数量，然后再跳转到修改页面去 -->
                <a onclick="editCount(<%=p.getPid()%>)">修改数量</a>
            </td>
            <td>
                <!-- 利用脚本获取文本框中新的购物车数量，然后再跳转到修改页面去 -->
                <a onclick="shanchu(<%=p.getPid()%>)">删除</a>
            </td>
        </tr>

        <%
            }//for循环
        %>
    </table>
    <p>
        总计：<%=cart.getTotal() %>元
    </p>
    <%
        }//else的结束
    %>
    <a href="list.jsp">商品列表</a>
</fieldset></body>
</html>
