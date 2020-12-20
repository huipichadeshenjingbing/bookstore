<%--
  Created by IntelliJ IDEA.
  User: shenjingbing
  Date: 2020/3/18
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="author" content="Kodinger">
    <title>分享书屋网站后台登录入口</title>
    <link rel="stylesheet" type="text/css" href="../resources/admin/login/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../resources/admin/login/css/my-login.css">
</head>
<body class="my-login-page">
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center h-100">
            <div class="card-wrapper">
                <div class="brand">
                    <img src="../resources/admin/login/img/logo.jpg">
                </div>
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title" style="text-align: center">登 录</h4>
                        <form id="myForm" onsubmit='return false'>

                            <div class="form-group">
                                <label for="username">用 户 名</label>

                                <input id="username" type="text" class="form-control" name="username" placeholder="请输入用户名" value="" required autofocus>
                            </div>

                            <div class="form-group">
                                <label for="password">密 码

                                </label>
                                <input  id="password" type="password" class="form-control" name="password" placeholder="请输入密码" required data-eye>
                            </div>
                            <div class="form-group">
                                <label for="cpacha">验 证 码
                                </label>
                                <input style="width:50%" id="cpacha" type="text" class="form-control" name="cpacha" placeholder="请输入验证码" required data-eye>
                                <img id="cpacha-img" title="点击切换验证码" style="cursor:pointer; float: right; margin-top: -40.59px;" src="get_cpacha?vl=4&w=150&h=40&type=loginCpacha" width="150px" height="40px" onclick="changeCpacha()">
                            </div>


                            <div class="form-group no-margin">
                                <button id="myButton" type="button" class="btn btn-primary btn-block">
                                    登 录
                                </button>
                            </div>
                            <div class="margin-top20 text-center">
                                没有账户? <a href="register">创建账户</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="footer">
                    Copyright &copy; 2020 分 享 书 屋 管 理 系 统
                </div>
            </div>
        </div>
    </div>
</section>


<script src="../resources/admin/login/js/jquery.min.js"></script>
<script src="../resources/admin/login/bootstrap/js/bootstrap.min.js"></script>
<script src="../resources/admin/login/js/my-login.js"></script>
<script src="../resources/admin/login/js/jquery-1.8.0.min.js"></script>

<script>
    function changeCpacha(){
        $("#cpacha-img").attr("src",'get_cpacha?vl=4&w=150&h=40&type=loginCpacha&t=' + new Date().getTime());
    }

    $("#myButton").click(function () {
        var username = $("#username").val();
            var password = $("#password").val();
            var cpacha = $("#cpacha").val();
            if (username == '' || username == 'undefined') {
                alert("请填写用户名！");
                return;
            }
            if (password == '' || password == 'undefined') {
                alert("请填写密码！");
                return;
            }
            if (cpacha == '' || cpacha == 'undefined') {
                alert("请填写验证码！");
                return;
            }

        $.ajax({
            type: "POST",   //提交的方法
            url:"login", //提交的地址
            data:$('#myForm').serialize(),// 序列化表单值
            dataType:'json',
            async: true,
            success: function(data) {  //成功
                if (data.type=='success'){

                window.location.href="index";
                }else {
                    alert("登陆失败："+data.msg)//就将返回的数据显示出来
                    changeCpacha();
                }
            }
        });
    });
</script>
</body>
</html>