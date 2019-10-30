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


    <link rel="stylesheet" href="assets/css/media.css">
    <link rel="stylesheet" href="assets/css/button.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

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
    <link rel="stylesheet"
          href="assets/js/datepicker/bootstrap-datetimepicker.css">
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
                <h4 class="modal-title">新增任务</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="add-form">
                    <input type="hidden" name="adminName" value="<shiro:principal></shiro:principal>"/>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">开始时间</label>
                        <div class="col-sm-10 date form_datetime input-group">
                            <input class="form-control" type="text" value="" readonly id="add-start-time"
                                   name="startTime">
                            <span class="input-group-addon">
									<span class="glyphicon glyphicon-remove"></span>
								</span>
                            <span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span>
								</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">结束时间</label>
                        <div class="col-sm-10 date form_datetime input-group">
                            <input class="form-control" type="text" value="" readonly id="add-end-time" name="endTime">
                            <span class="input-group-addon">
									<span class="glyphicon glyphicon-remove"></span>
								</span>
                            <span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span>
								</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-device-type" class="col-sm-2 control-label">楼号</label>
                        <div class="col-sm-3">
                            <select class="form-control" name="buildNo">
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-device-type" class="col-sm-2 control-label">设备类型</label>
                        <div class="col-sm-6">
                            <select class="form-control" name="deviceType">
                                <option value="摄像头">摄像头</option>
                                <option value="电梯">电梯</option>
                                <option value="排风机">排风机</option>
                                <option value="气体检测仪">气体检测仪</option>
                                <option value="温湿度传感器">温湿度传感器</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-oper-type" class="col-sm-2 control-label">操作类型</label>
                        <div class="col-sm-3">
                            <select class="form-control" name="operationType">
                                <option value="检查">检查</option>
                                <option value="维护">维护</option>
                                <option value="保养">保养</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-ouser" class="col-sm-2 control-label">指定人员</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ouName"
                                   id="add-ouser">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="save-btn">保存</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改模态框 -->
<div class="modal fade" id="edit-modal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width: 70%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">任务修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit-form">
                    <div class="form-group">
                        <label for="edit-creator" class="col-sm-2 control-label">创建者</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="edit-creator"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-create-time" class="col-sm-2 control-label">创建时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="edit-create-time"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-start-time" class="col-sm-2 control-label">开始时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="edit-start-time"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-end-time" class="col-sm-2 control-label">结束时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="edit-end-time"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-type" class="col-sm-2 control-label">操作类型</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="edit-type"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-ouser" class="col-sm-2 control-label">指定人员</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ouName"
                                   id="edit-ouser">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="update-btn">更新</button>
            </div>
        </div>
    </div>
</div>
<!-- 详情模态框 -->
<div class="modal fade" id="detail-modal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width: 70%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">设备</h4>
            </div>
            <div class="modal-body">
                <table id="example-detail" class="device-detail-table">


                    <thead>
                    <tr>
                        <th>设备名</th>
                        <th style="width: 13%">设备编号</th>
                        <th>设备型号</th>
                        <th>供应商</th>
                        <th style="width: 13%">出厂编号</th>
                        <th>出厂日期</th>
                        <th>安装日期</th>
                        <th>安装位置</th>
                        <th>使用年限</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <!-- 					<form class="form-horizontal" id="edit-form"> -->
                <!-- 						<div class="form-group"> -->
                <!-- 							<label for="edit-ouser" class="col-sm-2 control-label">指定人员</label> -->
                <!-- 							<div class="col-sm-10"> -->
                <!-- 								<input type="text" class="form-control" name="ouName" -->
                <!-- 									id="edit-ouser"> -->
                <!-- 							</div> -->
                <!-- 						</div> -->
                <!-- 					</form> -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
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
                <h1>致微后台管理系统</h1>
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
        <h1>
            致微后台管理系统
        </h1>
    </div>

    <a id="toggle"> <span class="entypo-menu"></span>
    </a>
    <div class="dark">
        <form action="#">
				<span> <input type="text" name="search" value=""
                              class="search rounded id_search" placeholder="Search Menu..."
                              autofocus="">
				</span>
        </form>
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
                           class="title-menu-left"> <span class="widget-menu"></span> <i
                            data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                    </a></li>

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
                <div class="col-sm-3"></div>

                <div class="col-sm-7">

                    <div class="tittle-middle-header"></div>

                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
        <!--/ TITLE -->

        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li><span class="fontawesome-list-ul"></span></li>

            <li><a href="#" title="Sample page 1">任务管理</a></li>


        </ul>

        <!-- 表格开始-->
        <div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">

                    <div class="nest" id="tabletreeClose">
                        <div class="title-alt">
                            <h6>任务列表</h6>
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
                                    <p class="form-control-static">任务完成情况</p>
                                </div>
                                <select class="task-yesorno" name="taskStatus">
                                    <option value=""></option>
                                    <option value="Y">已完成</option>
                                    <option value="N">未完成</option>
                                </select>

                                <div class="form-group">
                                    <label class="sr-only">Name</label>
                                    <p class="form-control-static">楼号</p>
                                </div>
                                <select class="task-yesorno" name="buildNo" id="search-build-no">
                                </select>
                                <div class="form-group">
                                    <label class="sr-only">Status</label>
                                    <p class="form-control-static">楼层号</p>
                                </div>
                                <select class="task-yesorno" name="layerNo" id="search-layer-no">
                                    <option value=""></option>
                                </select>
                                <div class="form-group">
                                    <label class="sr-only">Name</label>
                                    <p class="form-control-static">任务类型</p>
                                </div>
                                <select class="task-yesorno" name="operationType">
                                    <option value=""></option>
                                    <option value="检查">检查</option>
                                    <option value="维护">维护</option>
                                    <option value="保养">保养</option>
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
                            <table id="example-advanced" class="task-table">


                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>创建者</th>
                                    <th>创建时间</th>
                                    <th>楼号</th>
                                    <th>完成情况</th>
                                    <th>指定人员</th>
                                    <th>设备详情</th>
                                    <th>操作</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>
                                        <button type="button" class="btn btn-primary">详情</button>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-primary">编辑</button>
                                        <button type="button" class="btn btn-primary">删除</button>
                                    </td>

                                </tr>

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
<script src="assets/js/flatvideo/jquery.fitvids.js"></script>
<script type="text/javascript" src="assets/js/myplugin.js"></script>


<script>
    // Basic FitVids Test
    $(".well-media").fitVids();
    $(".vendor").fitVids();
    // Custom selector and No-Double-Wrapping Prevention Test
    $(".well-media").fitVids({
        customSelector: "iframe[src^='http://socialcam.com']"
    });
</script>

<script src="assets/js/tree/lib/jquery.cookie.js"
        type="text/javascript"></script>
<script src="assets/js/tree/jquery.treeview.js" type="text/javascript"></script>


<script src="assets/js/tree/tabelizer/jquery-ui-1.10.4.custom.min.js"></script>
<script src="assets/js/tree/tabelizer/jquery.tabelizer.js"></script>

<script src="assets/js/tree/treetable/vendor/jquery-ui.js"></script>
<script
        src="assets/js/tree/treetable/javascripts/src/jquery.treetable.js"></script>
<script type="text/javascript"
        src="assets/js/datepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
        src="assets/js/datepicker/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
    var totalRecord, currentPage;
    var baseUrl = 'http://localhost:8080/FantasyStar2';
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
        build_search_form();
    });

    function to_page(pn) {
        $.ajax({
            url: baseUrl + '/getTasks',
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
                build_table(result.info.pageInfo.list);
                build_page_info(result.info.pageInfo);
                build_nav(result.info.pageInfo);
            }
        })
    }

    function build_table(list) {
        //清空表格
        $('.task-table tbody').empty();
        $
            .each(
                list,
                function (index, item) {
                    var idTd = $('<td scope="row"></td>').append(
                        item.id);
                    var adminNameTd = $('<td></td>').append(
                        item.adminName);
                    var createTimeTd = $('<td></td>').append(
                        getDateTime(item.createTime));
                    var buildNoTd = $('<td></td>').append(item.buildNo);
                    var statusTd = $('<td></td>').append(
                        item.taskStatus == 'Y' ? '已完成' : '未完成');
                    var operUserTd = $('<td></td>').append(
                        item.ouName);

                    var detailBtnTd = $('<td></td>')
                        .append(
                            $(
                                '<button type="button" class="btn btn-primary detail-btn"></button>')
                                .append('详情').attr(
                                'detail-id',
                                item.id));

                    var editBtn = $('<button></button>').addClass(
                        'btn btn-info  edit-btn').append('编辑')
                        .attr('edit-id', item.id);
                    var delBtn = $('<button></button>').addClass(
                        'btn btn-danger del-btn').append('删除')
                        .attr('del-id', item.id);
                    var btnTd = $('<td></td>').append(editBtn)
                        .append(' ').append(delBtn);

                    $('<tr></tr>').append(idTd).append(adminNameTd)
                        .append(createTimeTd).append(buildNoTd).append(statusTd)
                        .append(operUserTd).append(detailBtnTd)
                        .append(btnTd).appendTo(
                        '.task-table tbody');

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

    function build_device_detail_table(list) {
        $('.device-detail-table tbody').empty();
        $.each(list,
            function (index, item) {
                var nameTd = $('<td></td>').append(item.deviceName);
                var noTd = $('<td></td>').append(item.logicId);
                var typeTd = $('<td></td>').append(item.type);
                var applyFactoryTd = $('<td></td>').append(
                    item.applyFactory);
                var leaveFactoryNoTd = $('<td></td>').append(
                    item.leaveFactoryNo);
                var leaveFactoryDateTd = $('<td></td>').append(
                    getDate(item.leaveFactoryDate));
                var installDateTd = $('<td></td>').append(
                    getDate(item.installDate));
                var positionTd = $('<td></td>').append(item.position);
                var availableYearTd = $('<td></td>').append(
                    item.availableYear);

                $('<tr></tr>').append(nameTd).append(noTd).append(
                    typeTd).append(applyFactoryTd).append(
                    leaveFactoryNoTd).append(leaveFactoryDateTd)
                    .append(installDateTd).append(positionTd)
                    .append(availableYearTd).appendTo(
                    '.device-detail-table tbody');
            })
    }

    //保存任务
    $('#save-btn').click(function () {
        $.ajax({
            url: baseUrl + '/saveTask',
            method: 'post',
            async: false,
            data: $('#add-form').serialize(),
            success: function (result) {

            }
        })
        //关闭新增模态框
        $('#add-modal').modal('hide');
        console.info(totalRecord);
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

    $(document).on(
        "click",
        ".detail-btn",
        function () {
            $.ajax({
                url: baseUrl + '/getDevicesWithCondition/'
                    + $(this).attr('detail-id'),
                method: 'get',
                success: function (result) {
                    var deviceDetails = result.info.deviceDetails;
                    build_device_detail_table(deviceDetails);
                }
            })
            $('#detail-modal').modal({
                backdrop: 'static'
            })
        })

    //在创建按钮之前绑定click事件是不能绑定的，所以用on绑定
    $(document).on(
        "click",
        ".edit-btn",
        function () {
            $.ajax({
                url: baseUrl + '/getTask/' + $(this).attr('edit-id'),
                method: 'get',
                success: function (result) {
                    var taskData = result.info.task;
                    $('#edit-creator').text(taskData.adminName);
                    $('#edit-create-time').text(
                        getDateTime(taskData.createTime));
                    $('#edit-type').text(taskData.operationType);
                    $('#edit-ouser').val(taskData.ouName);
                    $('#edit-start-time').text(
                        getDateTime(taskData.startTime));
                    $('#edit-end-time').text(
                        getDateTime(taskData.endTime));
                }
            })
            $('#edit-modal').modal({
                backdrop: 'static'
            })
            //为更新按钮绑定id
            $('#update-btn').attr('edit-id', $(this).attr('edit-id'));
        })

    $('#update-btn').click(function () {
        $.ajax({
            url: baseUrl + '/updateTask/' + $(this).attr('edit-id'),
            method: 'put',
            data: $('#edit-form').serialize(),
            async: false,
            success: function (result) {

            }
        })
        $('#edit-modal').modal('hide');
        to_page(currentPage);
    })

    $(document).on('click', '.del-btn', function () {
        var taskId = $(this).attr('del-id');
        if (confirm('确定要删除任务[' + taskId + ']吗?')) {
            $.ajax({
                url: baseUrl + '/delTask/' + taskId,
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

    function build_search_form() {
        $.ajax({
            url: baseUrl + '/getNo',
            method: 'get',
            success: function (result) {
                var no = result.info.no;
                $('#search-build-no').empty();
                $('#search-build-no').append($('<option></option>'));
                for (var i = 1; i <= no.buildNo; i++) {
                    $('#search-build-no').append($('<option></option>').text(i).val(i));
                }
                $('#search-layer-no').empty();
                $('#search-layer-no').append($('<option></option>'));
                for (var i = 1; i <= no.layerNo; i++) {
                    $('#search-layer-no').append($('<option></option>').text(i).val(i));
                }
            }
        })
    }


    $('.form_datetime').datetimepicker({
        language: 'zh-CN',
        format: 'yyyy-mm-dd hh:ii:ss',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
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

    //自定义另一个表格
    $("#example-detail").treetable({
        expandable: true
    });

    // Highlight selected row
    $("#example-detail tbody").on("mousedown", "tr", function () {
        $(".selected").not(this).removeClass("selected");
        $(this).toggleClass("selected");
    });

    // Drag & Drop Example Code
    $("#example-detail .file, #example-advanced .folder").draggable({
        helper: "clone",
        opacity: .75,
        refreshPositions: true, // Performance?
        revert: "invalid",
        revertDuration: 300,
        expandable: true,
        scroll: true
    });

    $("#example-detail .folder").each(
        function () {
            $(this).parents("#example-detail tr").droppable(
                {
                    accept: ".file, .folder",
                    drop: function (e, ui) {
                        var droppedEl = ui.draggable.parents("tr");
                        $("#example-detail").treetable("move",
                            droppedEl.data("ttId"),
                            $(this).data("ttId"));
                    },
                    hoverClass: "accept",
                    over: function (e, ui) {
                        var droppedEl = ui.draggable.parents("tr");
                        if (this != droppedEl[0]
                            && !$(this).is(".expanded")) {
                            $("#example-detail").treetable(
                                "expandNode",
                                $(this).data("ttId"));
                        }
                    }
                });
        });

    $("form#reveal").submit(function () {
        var nodeId = $("#revealNodeId").val()

        try {
            $("#example-detail").treetable("reveal", nodeId);
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
