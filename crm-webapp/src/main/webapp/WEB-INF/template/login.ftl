<#assign base = rc.contextPath />
<#assign static = base+"/static" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录</title>
    <link rel="stylesheet" href="${static}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${static}/css/styles.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal">
                <span class="heading">用户登录</span>
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="用户名或电子邮件">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码">
                </div>
                <div class="form-group">
                    <div class="l yzm-input"><input type="text" class="form-control" placeholder="验证码"></div>
                    <div class="r yzm-img"><img src="" alt=""></div>
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">记住我</span>
                    <button type="submit" class="btn btn-default">登录</button>
                </div>
                <div class="btn-group">
                    <a href="#" class="l">忘记密码</a>
                    <a href="#" class="r">注册</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>