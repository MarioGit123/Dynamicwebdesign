<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-02
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单</title>
</head>
<body>
<form action="jisuan.jsp">
    <p>第一个数：<input type="text" name="num1"></p>
    运算符
    <select name="fuhao">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
   </select>
    <p>第二个数：<input type="text" name="num2"></p>
    <input type="submit"value="提交">
</form>

</body>
</html>
