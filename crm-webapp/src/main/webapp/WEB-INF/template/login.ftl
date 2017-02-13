<#include "/WEB-INF/template/common/assign.ftl">
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link href="${static}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${static}/css/styles.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${static}/js/html5shiv.js"></script>
    <script src="${static}/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><span>壹贝</span>crm</a>
            <ul class="user-menu">
                <li class="dropdown pull-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> 用户 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 简介</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-cog"></span> 设置</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- /.container-fluid -->
</nav>
<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <ul class="nav menu">
        <li class="active"><a href="index.html"><span class="glyphicon glyphicon-dashboard"></span> 用户</a></li>
        <li><a href="widgets.html"><span class="glyphicon glyphicon-th"></span> 表单</a></li>
        <li><a href="charts.html"><span class="glyphicon glyphicon-stats"></span> Charts</a></li>
        <li><a href="tables.html"><span class="glyphicon glyphicon-list-alt"></span> Tables</a></li>
        <li><a href="forms.html"><span class="glyphicon glyphicon-pencil"></span> Forms</a></li>
        <li><a href="panels.html"><span class="glyphicon glyphicon-info-sign"></span> Alerts &amp; Panels</a></li>
        <li class="parent">
            <a href="#">
                <span class="glyphicon glyphicon-list"></span> Dropdown <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span>
            </a>
            <ul class="children collapse in" id="sub-item-1">
                <!-- <li>
                    <a class="current" href="#">
                        <span class="glyphicon glyphicon-share-alt"></span> Sub Item 1
                    </a>
                </li> -->
                <li>
                    <a class="" href="#">
                        <span class="glyphicon glyphicon-share-alt"></span> Sub Item 2
                    </a>
                </li>
                <li>
                    <a class="" href="#">
                        <span class="glyphicon glyphicon-share-alt"></span> Sub Item 3
                    </a>
                </li>
            </ul>
        </li>
        <li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Login Page</a></li>
    </ul>
</div>
<!--/.sidebar-->
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main pb100">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
            <li class="active">用户</li>
        </ol>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4 class="box-title">客户关键信息</h4>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal">
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-lg-3">
                                <label class="col-lg-4 control-label">省份</label>
                                <div class="col-lg-8">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="col-lg-4 control-label">城市</label>
                                <div class="col-lg-8">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div><div class="col-lg-3">
                            <label class="col-lg-4 control-label">县区</label>
                            <div class="col-lg-8">
                                <select class="form-control">
                                    <option>option 1</option>
                                </select>
                            </div>
                        </div><div class="col-lg-3">
                            <label class="col-lg-4 control-label">镇街</label>
                            <div class="col-lg-8">
                                <select class="form-control">
                                    <option>option 1</option>
                                </select>
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-2 control-label">手机</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control">
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-2 control-label">固定电话</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control">
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </form>
            </div>
        </div>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4 class="box-title">客户基本资料</h4>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal">
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">客户性别</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-3 control-label">出生日期</label>
                            <div class="col-sm-9">
                                <select class="form-control">
                                    <option>option 1</option>
                                </select>
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">邮政编号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-3 control-label">家庭住址</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">会员卡号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-3 control-label">曾购买产品</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">首接触员工</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-3 control-label">首接触部门</label>
                            <div class="col-sm-9">
                                <select class="form-control">
                                    <option>option 1</option>
                                </select>
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">家庭出身</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>公务员</option>
                                    </select>
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-3 control-label">职业</label>
                            <div class="col-sm-9">
                                <select class="form-control">
                                    <option>option 1</option>
                                </select>
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">是否为老客户</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-3 control-label">客户月收入</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">QQMSN号码</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div><div class="col-lg-6">
                            <label class="col-sm-3 control-label">教育程度</label>
                            <div class="col-sm-9">
                                <select class="form-control">
                                    <option>option 1</option>
                                </select>
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </form>
            </div>
        </div>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h4 class="box-title">客户拓展资料（若选择客户介绍人，必须选择介绍人关系）</h4>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal">
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">客户状态</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">客户介绍人</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">介绍人关系</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">爱好</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">客户来源</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">家庭经济决定权</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">健康意识</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">曾任最高职务</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">结婚纪念日</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">病症</label>
                                <div class="col-sm-9">
                                    <select class="form-control">
                                        <option>option 1</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <label class="col-sm-3 control-label">备注</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </form>
            </div>
        </div>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="btns">
            <span class="save">保存</span><span class="add">新增</span><span class="delete">删除</span>
        </div>
    </div>
    <!--/.row-->
</div>
<!--/.main-->
<script src="${static}/js/jquery-1.11.1.min.js"></script>
<script src="${static}/js/bootstrap.min.js"></script>
<script src="${static}/js/dialog.js"></script>
<script src="${static}/js/public.js"></script>
</body>
</html>
