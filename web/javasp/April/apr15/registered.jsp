<%--
  Created by IntelliJ IDEA.
  User: 筱
  Date: 2019-04-15
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>registered</title>
    <script src="../js/jquery-2.2.3.min.js"></script>
    <script>
        $(function () {

            $(".button").on("click", function () {
                var $name = $(".name").val();
                var $pwd = $(".pwd").val();
            });


            $(".name").on("blur",function(){
                var name=$(".name").val();
               $(".name").val(name.replace(/[^(a-zA-Z)]/g,""))
            });
            $(".pwd").on("blur",function(){
               $(this).val($(this).val().replace(/^\d{0,}/g,""))
                if($(this).val().length<6||$(this).val().length>18){
                    $(".ispwd").text("密码长度不正确");
                    $(".pwd").val("");
                }
            })
        })
    </script>
</head>
<body>
<div>

    <form action="${pageContext.request.contextPath}/userinfo" method="post" enctype="multipart/form-data">
        <p>
            账号：<input type="text" name="user" class="name"><span class="isname"> </span>
        </p>
        <p>
            密码：<input type="password" class="pwd" name="password"><span class="ispwd"></span>
        </p>
        <p>头像：</p>
        <div class="boximgs">

        </div>
        <p>
            <input type="file" name="profilePicture" id="upimg">
        </p>
        <p>
            <input type="submit" value="注册" class="button">
        </p>
    </form>
</div>
</body>
</html>
