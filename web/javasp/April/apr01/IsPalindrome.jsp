<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-01
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>palindrome</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        td {
            border: 1px solid pink;
            width: 50px;
            height: 30px;
            /*border-collapse: collapse;*/
        }
    </style>
</head>
<body>
<div>
    <table>
        <tr>
            <td>1221</td>
            <td ><%out.println(isPalindrome("1221"));%></td>
        </tr>
        <tr>
            <td>1221</td>
            <td ><%out.println(isPalindrome("1221"));%></td>

        </tr>
        <tr>
            <td>1221</td>
            <td ><%out.println(isPalindrome("1221"));%></td>

        </tr>
        <tr>
            <td>12121</td>
            <td ><%out.println(isPalindrome("12121"));%></td>

        </tr>
    </table>
</div>

<%!
    String str = null;

    private String isPalindrome(String str) {
        char[] arr = str.toCharArray();
        boolean ishui = false;
        for (int i = 0; i < arr.length / 2; i++) {
            for (int j = i; j > 0; j--) {
                if (arr[j] == arr[i]) {
                    ishui = true;
                }
            }
        }
        return ishui ? "是" : "否";
    }

%>

<%
    out.println(isPalindrome("1221"));
    %>

</body>
</html>
