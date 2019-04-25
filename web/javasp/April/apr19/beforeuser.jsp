<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-19
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>befo</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    request.setAttribute("name", request.getParameter("name"));
    request.setAttribute("phone", request.getParameter("phone"));
    request.setAttribute("sex", request.getParameter("sex"));
    request.setAttribute("address", request.getParameter("address"));
    System.out.println(request.getParameter("sex"));
    String phone2 = request.getParameter("phone");


    String isChinaMobile = "^134[0-8]\\d{7}$|^(?:13[5-9]|147|15[0-27-9]|178|18[2-478])\\d{8}$";
    String isChinaUnion = "^(?:13[0-2]|145|15[56]|176|18[56])\\d{8}$";
    String isChinaTelcom = "^(?:133|153|177|18[019])\\d{8}$";

    int flag = 0;
    if (phone2.matches(isChinaMobile)) {
        request.setAttribute("Operator", 1);  //移动
    }
    if (phone2.matches(isChinaUnion)) {
        request.setAttribute("Operator", 2);//联通
    }
    if (phone2.matches(isChinaTelcom)) {
        request.setAttribute("Operator", 3);   //电信
    }

%>


<c:if test="${fn:length(name) >10 }">
    <span> 字符串长度</span>
    ${fn:length(name)}<br>
    ${param.address.startsWith('株洲')?"你是本地人":"你不是本地人"}<br>
    ${"男".equals(sex) ?"帅哥":"美女"}<br>
    <p>${param.address}</p>
    <c:choose>
        <c:when test="${Operator==1}">
            <span>移动</span>
        </c:when>
        <c:when test="${Operator==2}">
            <span>联通</span>
        </c:when>
        <c:when test="${Operator==3}">
            <span>电信</span>
        </c:when>
    </c:choose>

</c:if>
<c:if test="${fn:length(name) <=10}">
    <span>用户名过短</span>
</c:if>

</body>

</html>
