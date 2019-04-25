<%@ page import="com.productval.Aproduct" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-19
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>product</title>
</head>
<body>
<%
    Aproduct milk = new Aproduct(1221, "牛奶", 5, "新西兰", "250ml");
    Aproduct wanzai = new Aproduct(1123, "旺仔", 2, "越南", "25g");
    Aproduct qqtan = new Aproduct(3542, "QQ糖", 21.1, "河南", "40g");
    Aproduct steak = new Aproduct(8755, "神户牛排", 280.5, "日本", "25kg");

    List<Aproduct> lis = new ArrayList<>();
    lis.add(milk);
    lis.add(wanzai);
    lis.add(qqtan);
    lis.add(steak);


    request.setAttribute("product", lis);

%>

<C:forEach var="p" items="${product}">
    ${p.pid}--产品名：${p.pname}--价格：${p.pprice}--产地：${p.place}--规格：${p.specification}<br>
</C:forEach>
</body>
</html>
