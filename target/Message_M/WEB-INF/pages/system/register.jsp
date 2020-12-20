<%--
  Created by IntelliJ IDEA.
  User: shenjingbing
  Date: 2020/3/18
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="author" content="Kodinger">
    <title>分享书屋网站后台注册入口</title>
    <link rel="stylesheet" type="text/css" href="../resources/admin/login/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../resources/admin/login/css/my-login.css">
</head>
<body class="my-login-page">
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center h-100">
            <div class="card-wrapper" >
                <div class="brand" style=" margin-top: 20px;" >
                    <img src="../resources/admin/login/img/logo.jpg">
                </div>
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title" style="text-align: center">注 册</h4>
                        <form id="myForm" onsubmit='return false'>

                            <div class="form-group">
                                <label for="username">用 户 名</label>
                                <input id="username" type="text" class="form-control" name="username" required>
                            </div>

                            <div class="form-group">
                                <label for="password">密 码</label>
                                <input id="password" type="password" class="form-control" name="password" required data-eye>
                            </div>

                            <div class="form-group">
                                <label for="name">真 实 姓 名</label>
                                <input id="name" type="text" class="form-control" name="name" required autofocus>
                            </div>

                            <div class="form-group">
                                <label for="roleId">身 份</label>
                                <select id="roleId" name="role" class="form-control" style="font-size: 14px">
<%--                                    <option value="1">管 理 员</option>--%>
                                    <option value="2" selected>普 通 用 户 (默认)</option>
                                </select>
                            </div>

                            <div class="form-group no-margin">
                                <button id="myButton" type="button" class="btn btn-primary btn-block">
                                    注 册
                                </button>
                            </div>
                            <div class="margin-top20 text-center">
                                注册管理员请联系987902348@qq.com|<a href="login">登 录 系 统</a>
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
<script>
    /**
     *  添加记录
     */
     $("#myButton").click(function () {
       // document.querySelector("#myButton").onclick = function(){
        var username = $("#username").val();
        var password = $("#password").val();
        var name = $("#name").val();
        var roleId = $("#roleId").val();

        if (name == '' || name == 'undefined') {
            alert("请填写姓名！");
            return;
        }
        if (username == '' || username == 'undefined') {
            alert("请填写用户名！");
            return;
        }
        if (password == '' || password == 'undefined') {
            alert("请填写密码！");
            return;
        }


        $.ajax({
            url:'register',
            data:{username:username,password:password,name:name,roleId:roleId},
            dataType:'json',
            async: true,
            type:'post',
            success:function(data){
                if(data.type == 'success'){
                    alert('信息提示:用户注册成功！');
                    window.location.href="register";

                }else{
                    alert('注册失败: '+data.msg);
                    changeCpacha();
                }
            }
        });
      });


</script>
</body>
</html>