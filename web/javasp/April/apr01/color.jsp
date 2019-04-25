<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-01
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>


    </script>
</head>
<body style="background: <%=bgcolor()%>">
<%!
    public String bgcolor(){
        int red=(int) (Math.random()*255);
        int green=(int) (Math.random()*255);
        int blue=(int) (Math.random()*255);
        return "rgba("+red+","+green+","+blue+")";
    }
%>
</body>
</html>
