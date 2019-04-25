<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-13
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery-2.2.3.min.js"></script>
    <script>
        $(function () {
            $(".sub").on("click", function () {
                var $red = $("#red").val();
                var $green = $("#green").val();
                var $blue = $("#blue").val();
                $.post("http://localhost:8080/web/colorprocess", {
                    "red": $red,
                    "green": $green,
                    "blue": $blue
                }, function (data) {
                    $(".bg").css("background-color" , data);
                    console.log(data);
                });
            })
        })
    </script>
</head>
<body class="bg">
<div>
    <form>
        <p>
            red:<input type="number" id="red">
        </p>
        <p>
            green:<input type="number" id="green">
        </p>
        <p>
            blue:<input type="number" id="blue">
        </p>
        <p>
            <input type="button" value="确认" class="sub">
        </p>
    </form>

</div>
</body>
</html>
