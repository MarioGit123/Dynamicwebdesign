<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-01
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!

    int arr[][] = new int[9][9];

    private void yang() {
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j <= i; j++) {
                if (j == 0 || j == i)
                    arr[i][j] = 1;
                else {
                    arr[i][j] = arr[i - 1][j] + arr[i - 1][j - 1];
                }
            }
        }
    };
%>
<%
    yang();
    for (int i = 0; i < arr.length; i++) {
        for (int j = 0; j <= i; j++) {
            out.print(arr[i][j] + "\t");
        }
        out.println("<br>");
    }
%>
</body>
</html>
