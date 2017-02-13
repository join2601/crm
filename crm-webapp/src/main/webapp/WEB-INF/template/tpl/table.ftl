<#include "/WEB-INF/template/common/assign.ftl">
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link href="${static}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${static}/css/daterangepicker.css" rel="stylesheet">
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
                <!-- form start -->
                <form class="form-inline" style="padding-top:20px;">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>活动举办日期：</label>
                            <input type="text" class="form-control" id="startTime" placeholder="开始时间">
                            <input type="text" class="form-control" id="endTime" placeholder="结束时间">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>活动举办场地：</label>
                            <input type="text" class="form-control" id="place">
                            <button type="submit" class="btn btn-primary">选择</button>
                            <button type="submit" class="btn btn-danger">清除</button>
                        </div> 
                    </div>                   
                </form>
                <form class="form-inline">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>活动组织部门：</label>
                            <input type="text" class="form-control" id="department">
                            <button type="submit" class="btn btn-primary">选择</button>
                            <button type="submit" class="btn btn-danger">清除</button>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>活动内容形式：</label>
                            <select class="form-control">
                                <option></option>
                            </select>
                        </div>
                    </div>
                </form>
                <form class="form-inline">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>活动组织形式：</label>
                            <select class="form-control">
                                <option></option>
                            </select>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>参会部门：</label>
                            <input type="text" class="form-control" id="department">
                            <button type="submit" class="btn btn-primary">选择</button>
                            <input type="checkbox" id="checkboxSuccess" value="option1">
                        </div>
                    </div>
                </form>
                <!-- form end -->
                <!-- table start -->
                <div style="padding:20px;">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>客户名称</th>
                                <th>所在城市</th>
                                <th>资料状态</th>
                                <th>首接触部门</th>
                                <th>首接触员工</th>
                                <th>最后修改人</th>
                                <th>提交时间</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="active">
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                            <tr class="active">
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- table end -->
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
<script src="${static}/js/moment.min.js"></script>
<script src="${static}/js/datetimepicker.zh-CN.js"></script>
<script src="${static}/js/daterangepicker.js"></script>
<script src="${static}/js/dialog.js"></script>
<script src="${static}/js/public.js"></script>
<script>
$(function(){
    $('#startTime').daterangepicker({
        singleDatePicker: true
    }, function(start, end, label) {
        console.log(start.toISOString(), end.toISOString(), label);
    });

    $('#endTime').daterangepicker({
        singleDatePicker: true
    }, function(start, end, label) {
        console.log(start.toISOString(), end.toISOString(), label);
    });
})
</script>
</body>
</html>
