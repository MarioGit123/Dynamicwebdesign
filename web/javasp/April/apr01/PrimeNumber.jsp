<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-01
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>prime number</title>
</head>
<body>
<%!
    public String isPrime(int num) {
        for (int i = 2; i <Math.sqrt(num) ; i++) {
            if (num%i==0){
                return "不是";
            }
            if (num==1){
                return "不是";

            }
        }
        return "是素数";
    }


%>
<%
    out.println(isPrime(23));
%>
</body>
</html>
