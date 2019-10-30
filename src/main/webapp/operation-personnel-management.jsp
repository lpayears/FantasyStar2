<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>致微后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/button.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">


    <link rel="stylesheet" href="assets/js/calendar/css/calendar.css">


    <link rel="stylesheet" href="assets/js/tree/jquery.treeview.css">
    <link rel="stylesheet" href="../red-treeview.css">

    <link rel="stylesheet"
          href="assets/js/tree/treetable/stylesheets/jquery.treetable.css">
    <link rel="stylesheet"
          href="assets/js/tree/treetable/stylesheets/jquery.treetable.theme.default.css">

    <link href="assets/js/tree/tabelizer/tabelizer.min.css" media="all"
          rel="stylesheet" type="text/css">


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>

<body>

<!-- 新增模态框 -->
<div class="modal fade" id="add-modal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">新增运维人员</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="add-form">
                    <div class="form-group">
                        <label for="add-username" class="col-sm-2 control-label">账号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="username"
                                   id="add-username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-pwd" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="password"
                                   id="add-pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="name"
                                   id="add-name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <label class="radio-inline"> <input type="radio"
                                                                name="gender" value="M" checked="checked"> 男
                            </label> <label class="radio-inline"> <input type="radio"
                                                                         name="gender" value="F"> 女
                        </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-phone" class="col-sm-2 control-label">手机号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="cellphone"
                                   id="add-phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-email" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="email"
                                   id="add-email">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-info" id="add-reset-btn">重置</button>
                <button type="button" class="btn btn-primary" id="save-btn">保存</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改模态框 -->
<div class="modal fade" id="edit-modal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">运维人员信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit-form">
                    <div class="form-group">
                        <label for="edit-username" class="col-sm-2 control-label">账号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="username"
                                   id="edit-username"> <input type="hidden" id="salt"
                                                              name="salt">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="name"
                                   id="edit-name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <label class="radio-inline"> <input type="radio"
                                                                name="gender" value="M"> 男
                            </label> <label class="radio-inline"> <input type="radio"
                                                                         name="gender" value="F"> 女
                        </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-phone" class="col-sm-2 control-label">手机号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="cellphone"
                                   id="edit-phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-email" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="email"
                                   id="edit-email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">启用状态</label>
                        <div class="col-sm-10">
                            <label class="radio-inline"> <input type="radio"
                                                                name="status" value="Y"> 启用
                            </label> <label class="radio-inline"> <input type="radio"
                                                                         name="status" value="N"> 禁用
                        </label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" id="reset-pwd-btn">重置密码</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="update-btn">更新</button>
            </div>
        </div>
    </div>
</div>


<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!-- TOP NAVBAR -->
<nav role="navigation" class="navbar navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button data-target="#bs-example-navbar-collapse-1"
                    data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="entypo-menu"></span>
            </button>
            <button class="navbar-toggle toggle-menu-mobile toggle-left"
                    type="button">
                <span class="entypo-list-add"></span>
            </button>


            <div id="logo-mobile" class="visible-xs">
                <h1>
                    WEB管理<span>v1.2</span>
                </h1>
            </div>

        </div>


        <!-- Collect the nav links, forms, and other content for toggling -->
        <div id="bs-example-navbar-collapse-1"
             class="collapse navbar-collapse">

            <div id="nt-title-container"
                 class="navbar-left running-text visible-lg">
                <ul class="date-top">
                    <li class="entypo-calendar" style="margin-right: 5px"></li>
                    <li id="Date"></li>


                </ul>

                <ul id="digital-clock" class="digital">
                    <li class="entypo-clock" style="margin-right: 5px"></li>
                    <li class="hour"></li>
                    <li>:</li>
                    <li class="min"></li>
                    <li>:</li>
                    <li class="sec"></li>
                    <li class="meridiem"></li>
                </ul>
                <ul id="nt-title">
                    <li><i class="wi-day-lightning"></i>&#160;&#160;Berlin&#160; <b>85</b><i
                            class="wi-fahrenheit"></i>&#160;; 15km/h
                    </li>
                    <li><i class="wi-day-lightning"></i>&#160;&#160;Yogyakarta&#160;
                        <b>85</b><i class="wi-fahrenheit"></i>&#160;; Tonight- 72 °F (22.2
                        °C)
                    </li>

                    <li><i class="wi-day-lightning"></i>&#160;&#160;Sttugart&#160;
                        <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                    </li>

                    <li><i class="wi-day-lightning"></i>&#160;&#160;Muchen&#160; <b>85</b><i
                            class="wi-fahrenheit"></i>&#160;; 15km/h
                    </li>

                    <li><i class="wi-day-lightning"></i>&#160;&#160;Frankurt&#160;
                        <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                    </li>

                </ul>
            </div>


        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid --> </nav>

<!-- /END OF TOP NAVBAR -->

<!-- SIDE MENU -->
<div id="skin-select">
    <div id="logo">
        <h1>致微后台管理系统</h1>
    </div>

    <a id="toggle"> <span class="entypo-menu"></span>
    </a>
    <div class="dark">
        <form action="#"></form>
    </div>

    <div class="search-hover">
        <form id="demo-2">
            <input type="search" placeholder="Search Menu..." class="id_search">
        </form>
    </div>
    <div class="skin-part">
        <div id="tree-wrap">
            <div class="side-bar">
                <ul class="topnav menu-left-nest">
                    <li><a href="#" style="border-left: 0px solid !important;"
                           class="title-menu-left"> </a></li>

                    <li><a class="tooltip-tip ajax-load" href="index.jsp"
                           title="index"> <i class="icon-home"></i> <span>首页</span>

                    </a></li>
                    <li><a class="tooltip-tip ajax-load" href="#"
                           title="Personnel-management"> <i class="icon-user"></i> <span>人员管理</span>

                    </a>
                        <ul>
                            <shiro:hasRole name="root">
                                <li><a class="tooltip-tip2 ajax-load"
                                       href="administrator-management.jsp"
                                       title="Administrator-management"> <span>管理员管理</span>
                                </a></li>
                            </shiro:hasRole>
                            <li><a class="tooltip-tip2 ajax-load"
                                   href="operation-personnel-management.jsp"
                                   title="Operation-personnel-management"> <span>运维人员管理</span>
                            </a></li>
                        </ul>
                    </li>

                    <li><a class="tooltip-tip ajax-load"
                           href="model-management.jsp" title="Model-management"> <i
                            class="fontawesome-tasks"></i> <span>模型管理</span>

                    </a></li>

                    <li><a class="tooltip-tip ajax-load"
                           href="building-management.jsp" title="Building-management"> <i
                            class="icon icon-location"></i> <span>楼宇管理</span>

                    </a></li>


                    <li><a class="tooltip-tip ajax-load" href="#"
                           title="Dashboard"> <i class="entypo-newspaper"></i> <span>设备管理</span>

                    </a>
                        <ul>
                            <li><a class="tooltip-tip2 ajax-load"
                                   href="device-information.jsp" title="Device-information"> <span>设备信息</span></a>
                            </li>
                            <li><a class="tooltip-tip2 ajax-load"
                                   href="equipment-maintenance.jsp" title="Equipment-maintenance">
                                <span>设备维护</span>
                            </a></li>
                        </ul>
                    </li>

                    <li><a class="tooltip-tip ajax-load" href="#"
                           title="Dashboard"> <i class="entypo-newspaper"></i> <span>运维管理</span>

                    </a>
                        <ul>

                            <li><a class="tooltip-tip ajax-load"
                                   href="task-management.jsp" title="Task-management"> <i
                                    class="fontawesome-list-ul"></i> <span>任务管理</span>

                            </a></li>


                            <li><a class="tooltip-tip "
                                   href="historical-question-chart.jsp"
                                   title="Historical question chart"> <i
                                    class="icon icon-graph-bar"></i> <span>历史问题图表</span>
                            </a></li>

                            <li><a class="tooltip-tip ajax-load"
                                   href="alarm-prompt.jsp" title="Alarm-prompt"><i
                                    class="fontawesome-warning-sign"></i><span>报警提示</span> </a></li>
                            <li><a class="tooltip-tip ajax-load"
                                   href="operation-planning.jsp" title="Operation-planning"><i
                                    class="fontawesome-calendar"></i><span>运维规划</span></a></li>
                        </ul>
                    </li>
                    <li><a class="tooltip-tip ajax-load"
                           href="personal-setting.jsp" title="Personal-setting"><i
                            class="fontawesome-cog"></i><span>个人设置</span></a></li>

                    </li>
                </ul>


            </div>
        </div>
    </div>
</div>
<!-- END OF SIDE MENU -->


<!--  PAPER WRAP -->
<div class="wrap-fluid">
    <div class="container-fluid paper-wrap bevel tlbr">


        <!-- CONTENT -->
        <!--TITLE -->
        <div class="row">
            <div id="paper-top">


                <div class="col-sm-2">
                    <div class="devider-vertical visible-lg"></div>
                    <div class="btn-group btn-wigdet pull-right visible-lg">


                        <ul role="menu" class="dropdown-menu">
                            <li><a href="#"> <span
                                    class="entypo-plus-circled margin-iconic"></span>Add New
                            </a></li>
                            <li><a href="#"> <span
                                    class="entypo-heart margin-iconic"></span>Favorite
                            </a></li>
                            <li><a href="#"> <span class="entypo-cog margin-iconic"></span>Setting
                            </a></li>
                        </ul>
                    </div>


                </div>
            </div>
        </div>
        <!--/ TITLE -->

        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li><span class="icon-user"></span></li>

            <li><a href="#" title="Sample page 1">人员管理</a></li>
            <li><i class="fa fa-lg fa-angle-right"></i></li>
            <li><a href="#" title="Sample page 1">运维人员管理</a></li>

        </ul>

        <!-- END OF BREADCRUMB -->


        <div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">

                    <div class="nest" id="tabletreeClose">
                        <div class="title-alt">
                            <h6>运维人员列表</h6>
                            <div class="titleClose">
                                <a class="gone" href="#tabletreeClose"> <span
                                        class="entypo-cancel"></span>
                                </a>
                            </div>


                        </div>

                        <div class="body-nest" id="tabletree">

                            <form class="form-inline" id="search-form">
                                <div class="form-group">
                                    <label class="sr-only">Account</label>
                                    <p class="form-control-static">账号</p>
                                </div>
                                <div class="form-group">
                                    <label for="username" class="sr-only">Password</label> <input
                                        type="text" class="form-control" id="username"
                                        name="username">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Name</label>
                                    <p class="form-control-static">姓名</p>
                                </div>
                                <div class="form-group">
                                    <label for="name" class="sr-only">Password</label> <input
                                        type="text" class="form-control" id="name" name="name">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Status</label>
                                    <p class="form-control-static">账号状态</p>
                                </div>
                                <select class="select-width" name="status">
                                    <option value=""></option>
                                    <option value="Y">启用</option>
                                    <option value="N">禁用</option>
                                </select>


                                <!--<button type="submit" class="btn btn-default">Confirm identity</button>-->
                                <button type="button" class="btn btn-primary" id="search-btn">搜索</button>
                                <button type="button" class="btn btn-info"
                                        id="reset-search-btn">取消
                                </button>
                                <button type="button" class="btn btn-primary kaoyou"
                                        id="add-btn">新增
                                </button>
                            </form>
                            <table id="example-advanced" class="ouser-table">


                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>账号</th>
                                    <th>密码</th>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th>手机号</th>
                                    <th>邮箱</th>
                                    <th>账号状态</th>
                                    <th>在线情况</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>

                        </div>
                        <div class="row">
                            <!-- 分页信息 -->
                            <div class="col-md-4" id="page-info"></div>
                            <!-- 分页条 -->
                            <div class="col-md-offset-9 col-md-5">
                                <nav aria-label="Page navigation" id="page-nav"></nav>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>


    <!-- /END OF CONTENT -->


    <!-- FOOTER -->
    <div class="footer-space"></div>
    <div id="footer">
        <div class="devider-footer-left"></div>
        <div class="time">
            <p id="spanDate">
            <p id="clock">
        </div>


    </div>
    <!-- / END OF FOOTER -->


</div>
</div>
<!--  END OF PAPER WRAP -->


<!-- MAIN EFFECT -->
<script type="text/javascript" src="assets/js/preloader.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/load.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>


<!-- /MAIN EFFECT -->
<!-- GAGE -->
<script type="text/javascript"
        src="assets/js/calendar/underscore/underscore-min.js"></script>
<!-- <script type="text/javascript" src="assets/js/calendar/bootstrap3/js/bootstrap.min.js"></script> -->
<script type="text/javascript"
        src="assets/js/calendar/jstimezonedetect/jstz.min.js"></script>

<script type="text/javascript"
        src="assets/js/calendar/language/fr-FR.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/de-DE.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/el-GR.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/it-IT.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/pl-PL.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/pt-BR.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/es-MX.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/es-ES.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/ru-RU.js"></script>
<script type="text/javascript"
        src="assets/js/calendar/language/sv-SE.js"></script>
<script type="text/javascript" src="assets/js/calendar/calendar.js"></script>
<script type="text/javascript" src="assets/js/calendar/app.js"></script>

<script src="assets/js/tree/lib/jquery.cookie.js"
        type="text/javascript"></script>
<script src="assets/js/tree/jquery.treeview.js" type="text/javascript"></script>


<script src="assets/js/tree/tabelizer/jquery-ui-1.10.4.custom.min.js"></script>
<script src="assets/js/tree/tabelizer/jquery.tabelizer.js"></script>

<script src="assets/js/tree/treetable/vendor/jquery-ui.js"></script>
<script
        src="assets/js/tree/treetable/javascripts/src/jquery.treetable.js"></script>
<script type="text/javascript">
    var totalRecord, currentPage;
    var baseUrl = "http://localhost:8080/FantasyStar2";
    $(function () {
        $("#browser, #browser2").treeview({
            animated: "fast",
            collapsed: false,
            unique: true,
            persist: "cookie",
            toggle: function () {
                window.console && console.log("%o was toggled", this);
            }
        });
        to_page(1);
    });

    function to_page(pn) {
        $.ajax({
            url: baseUrl + '/getOperUsers',
            method: 'get',
            data: $.param({
                'pn': pn
            }) + '&' + $('#search-form').serialize(),
            async: false,
            success: function (result) {
                if (result.code == 200) {
                    alert('出现错误')
                    return;
                }
                //console.info(result.info);
                build_table(result.info.pageInfo.list);
                build_page_info(result.info.pageInfo);
                build_nav(result.info.pageInfo);
            }
        })
    }

    function build_table(list) {
        //清空表格
        console.info(list)
        $('.ouser-table tbody').empty();
        $.each(list, function (index, item) {
            var idTd = $('<td scope="row"></td>').append(item.id);
            var usernameTd = $('<td></td>').append(item.username);
            var pwdTd = $('<td></td>').append(item.password);
            var nameTd = $('<td></td>').append(item.name);
            var genderTd = $('<td></td>').append(
                item.gender == 'M' ? '男' : '女');
            var phoneTd = $('<td></td>').append(item.cellphone);
            var mailTd = $('<td></td>').append(item.email);
            var statusTd = $('<td></td>').append(
                item.status == 'Y' ? '启用' : '禁用');
            var onlineTd = $('<td></td>').append(
                item.online == 'Y' ? '在线' : '离线');

            var editBtn = $('<button></button>').addClass(
                'btn btn-info btn-xs edit-btn').append('编辑').attr(
                'edit-id', item.id);
            var delBtn = $('<button></button>').addClass(
                'btn btn-danger btn-xs del-btn').append('删除').attr(
                'del-id', item.id);
            var btnTd = $('<td></td>').append(editBtn).append(' ').append(
                delBtn);

            $('<tr></tr>').append(idTd).append(usernameTd).append(pwdTd)
                .append(nameTd).append(genderTd).append(phoneTd)
                .append(mailTd).append(statusTd).append(onlineTd)
                .append(btnTd).appendTo('.ouser-table tbody');
        })
    }

    //解析显示分页信想
    function build_page_info(info) {
        $('#page-info').empty();
        $('#page-info').append(
            '&nbsp;&nbsp;&nbsp;当前第' + info.pageNum + '页，共' + info.pages
            + '页，共' + info.total + '条记录');
        totalRecord = info.total;
        currentPage = info.pageNum;
    }

    function build_nav(info) {
        $('#page-nav').empty();
        var ul = $('<ul></ul>').addClass('pagination');
        var firstPageLi = $('<li></li>').append($('<a></a>').append('首页'))
            .attr('href', '#');
        var prePageLi = $('<li></li>').append(
            $('<a></a>').append('&laquo;'));
        if (info.hasPreviousPage == false) {
            firstPageLi.addClass('disabled');
            prePageLi.addClass('disabled');
        } else {
            firstPageLi.click(function () {
                to_page(1);
            })
            prePageLi.click(function () {
                to_page(info.prePage);
            })
        }
        ul.append(firstPageLi).append(prePageLi);

        $.each(info.navigatepageNums, function (index, item) {
            var li = $('<li></li>').append($('<a></a>').append(item));
            if (info.pageNum == item) {
                li.addClass('active');
            }
            li.click(function () {
                to_page(item);
            })
            ul.append(li);
        })

        var lastPageLi = $('<li></li>').append($('<a></a>').append('末页'))
            .attr('href', '#');
        var nextPageLi = $('<li></li>').append(
            $('<a></a>').append('&raquo;'));
        if (info.hasNextPage == false) {
            lastPageLi.addClass('disabled');
            nextPageLi.addClass('disabled');
        } else {
            lastPageLi.click(function () {
                to_page(info.pages);
            })
            nextPageLi.click(function () {
                to_page(info.nextPage);
            })
        }
        ul.append(nextPageLi).append(lastPageLi);
        $('#page-nav').append(ul);
    }

    //保存运维人员
    $('#save-btn').click(function () {
        $.ajax({
            url: baseUrl + '/saveOperUser',
            method: 'post',
            async: false,
            data: $('#add-form').serialize(),
            success: function (result) {

            }
        })
        //关闭新增模态框
        $('#add-modal').modal('hide');
        to_page(totalRecord);
    })

    $('#add-btn').click(function () {
        $('#add-modal').modal({
            backdrop: 'static'
        })
    })

    $('#add-reset-btn').click(function () {
        $('#add-form')[0].reset();
    })

    //在创建按钮之前绑定click事件是不能绑定的，所以用on绑定
    $(document).on(
        "click",
        ".edit-btn",
        function () {
            $.ajax({
                url: baseUrl + '/getOperUser/'
                    + $(this).attr('edit-id'),
                method: 'get',
                success: function (result) {
                    var operUserData = result.info.operUser;
                    $('#edit-username').val(operUserData.username);
                    $('#edit-name').val(operUserData.name);
                    //通过css选择器选择
                    $('#edit-modal input[name=gender]').val(
                        [operUserData.gender]);
                    $('#edit-phone').val(operUserData.cellphone);
                    $('#edit-email').val(operUserData.email);
                    $('#edit-modal input[name=status]').val(
                        [operUserData.status]);

                    //帮助管理员重置运维人员的密码的盐值
                    $('#salt').val(operUserData.salt);
                }
            })
            $('#edit-modal').modal({
                backdrop: 'static'
            })
            //为更新按钮绑定id
            $('#update-btn').attr('edit-id', $(this).attr('edit-id'));
            //为重置密码按钮绑定id
            $('#reset-pwd-btn').attr('reset-id',
                $(this).attr('edit-id'));
        })

    $('#update-btn').click(function () {
        $.ajax({
            url: baseUrl + '/updateOperUser/' + $(this).attr('edit-id'),
            method: 'put',
            data: $('#edit-form').serialize(),
            async: false,
            success: function (result) {

            }
        })
        $('#edit-modal').modal('hide');
        to_page(currentPage);
    })

    $('#reset-pwd-btn').click(
        function () {
            var username = $('#edit-username').val();
            if (confirm('确定要重置[' + username + ']的密码吗?')) {
                $.ajax({
                    url: baseUrl + '/resetOperUserPwd/'
                        + $(this).attr('reset-id'),
                    method: 'put',
                    data: {
                        'salt': $('#salt').val(),
                    },
                    success: function (result) {
                        if (result.code == 200) {
                            alert(result.msg)
                        }
                        $('#edit-modal').modal('hide');
                        to_page(currentPage);
                    }

                })
            }
        })

    $(document).on('click', '.del-btn', function () {
        var username = $(this).parents('tr').find('td:eq(0)').text();
        var operUserId = $(this).attr('del-id');
        if (confirm('确定要删除管理员[' + username + ']吗?')) {
            $.ajax({
                url: baseUrl + '/delOperUser/' + operUserId,
                method: 'delete',
                async: false,
                success: function (result) {
                    if (result.code == 200) {
                        alert(result.msg)
                    }
                }
            })
            to_page(currentPage);
        }
    })

    $('#add-modal').on('hidden.bs.modal', function (e) {
        $('#add-form')[0].reset();
    })

    $('#search-btn').click(function () {
        to_page(1);
    })
    $('#reset-search-btn').click(function () {
        $('#search-form')[0].reset();
        to_page(1);
    })
</script>

<script>
    $("#example-basic").treetable({
        expandable: true
    });

    $("#example-basic-static").treetable();

    $("#example-basic-expandable").treetable({
        expandable: true
    });

    $("#example-advanced").treetable({
        expandable: true
    });

    // Highlight selected row
    $("#example-advanced tbody").on("mousedown", "tr", function () {
        $(".selected").not(this).removeClass("selected");
        $(this).toggleClass("selected");
    });

    // Drag & Drop Example Code
    $("#example-advanced .file, #example-advanced .folder").draggable({
        helper: "clone",
        opacity: .75,
        refreshPositions: true, // Performance?
        revert: "invalid",
        revertDuration: 300,
        expandable: true,
        scroll: true
    });

    $("#example-advanced .folder").each(
        function () {
            $(this).parents("#example-advanced tr").droppable(
                {
                    accept: ".file, .folder",
                    drop: function (e, ui) {
                        var droppedEl = ui.draggable.parents("tr");
                        $("#example-advanced").treetable("move",
                            droppedEl.data("ttId"),
                            $(this).data("ttId"));
                    },
                    hoverClass: "accept",
                    over: function (e, ui) {
                        var droppedEl = ui.draggable.parents("tr");
                        if (this != droppedEl[0]
                            && !$(this).is(".expanded")) {
                            $("#example-advanced").treetable(
                                "expandNode",
                                $(this).data("ttId"));
                        }
                    }
                });
        });

    $("form#reveal").submit(function () {
        var nodeId = $("#revealNodeId").val()

        try {
            $("#example-advanced").treetable("reveal", nodeId);
        } catch (error) {
            alert(error.message);
        }

        return false;
    });
</script>

<script>
    $(document).ready(function () {
        var table1 = $('#table1').tabelize({
            /*onRowClick : function(){
            alert('test');
            }*/
            fullRowClickable: true,
            onReady: function () {
                console.log('ready');
            },
            onBeforeRowClick: function () {
                console.log('onBeforeRowClick');
            },
            onAfterRowClick: function () {
                console.log('onAfterRowClick');
            },
        });
    });
</script>


</body>

</html>
