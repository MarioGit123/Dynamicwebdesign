<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-14
  Time: 0:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .yz {
            display: inline-block;
            width: 70px;
            height: 30px;
            background: pink;
            text-align: center;
            line-height: 30px;
        }
    </style>
    <script src="../js/jquery-2.2.3.min.js"></script>
    <script>
        $(function () {
            var i = 0;
            $.post("http://localhost:8080/web/verificationcode", function (date) {
                $(".yz").val(date);
            });
            $(".huoqu").on("click", function () {
                $.post("http://localhost:8080/web/verificationcode", function (date) {
                    $(".yz").text(date);
                });
            });
            $(".enrolment").on("click", function () {
                if (i < 2 && i >= 0) {
                    isSuccess();
                } else {
                    alert("超过次数！")

                }

            });

            function isSuccess() {
                var pwd = $(".pwd").val();
                var pwdtwo = $(".pwdtwo").val();
                var yz = $(".yz").val();
                var user = $(".uesryzm").val();
                console.log("ssswwq1", pwd);
                console.log("密码二", pwdtwo);
                console.log("验证码：", yz);
                console.log("验证码二", user);
                if (pwd===pwdtwo && yz===user) {
                    alert("注册成功");
                } else {
                    alert("注册失败");
                    i++;
                }

            }
        });


    </script>
</head>
<body>
<div>
    <form>
        <p>
            账号：<input type="text" class="name">
        </p>
        <p>
            密码：<input type="text" class="pwd">
        </p>
        <p>
            再次输入密码：<input type="text" class="pwdtwo">
        </p>
        验证码：

        <input type="text" class="yz">
        <input type="button" class="huoqu" value="获取验证码">
        <p>
            输入验证码：<input type="text" class="uesryzm">
        </p>
        <p>
            <input type="button" class="enrolment" value="注册">
        </p>
    </form>
</div>
</body>
</html>
