<#assign base = rc.contextPath />
<#assign static = base+"/static" />
<#assign dist = rc.contextPath +"/static/dist"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录</title>
    <link href="${static}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${dist}/css/login.css">
</head>
<body>
<div class="login-wrap">
    <div class="login-logo"><img src="${dist}/img/login-logo.png" alt=""></div>
    <div class="login-box">
        <div class="login-box-inner">
            <form name="form" action="${base}/login" method="post" id="loginForm">
                <div id="tip">
                    <p style="margin-left: 50px;color:green;">
                        <i class="fa fa-thumbs-o-down"></i>
                        欢迎Ecloud实验室管理员使用
                    </p>
                <#if result.success>
                    <p style="color:green;margin-left: 50px;">${result.message}</p>
                <#elseif result?exists && !result.suceess>
                    <p id="erro" style="color:red;margin-left: 50px;">登录失败：${result.message}</p>
                </#if>
                </div>
                <div class="login-input">
                    <img src="${dist}/img/user.png" alt="">
                    <input type="email" placeholder="邮箱" name="username" required title="请填写用户名">
                </div>
                <div class="login-input">
                    <img src="${dist}/img/pwd.png" alt="">
                    <input type="password" placeholder="******" name="password" required>
                </div>
                <div class="login-btn" id="loginBtn">登录</div>
            </form>
            <div class="btns">
                <a href="${base}/forget/forgetPage" id="forgetId">忘记密码</a>
                <a href="${base}/register.htm" id="registBtn">用户注册</a>
            </div>
        </div>
    </div>
    <div class="footer">@2016 Guangzhou Bynon Information Technology Co.Ltd</div>
</div>
<script>
    var base = "${base}";
</script>
<!-- jQuery 2.2.0 -->
<script src="${base}/static/plugins/jQuery/jQuery-2.2.0.min.js"></script>
<script src="${dist}/js/jquery.md5.js"></script>
<!-- 表单校验 -->
<script src="${static}/plugins/jquery-validate/jquery.validate.min.js"></script>
<script src="${dist}/js/ecloud.js"></script>
<script src="${dist}/js/login.js"></script>
</body>
</html>