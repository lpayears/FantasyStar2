<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>致微后台管理系统</title>
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/media.css">
    <link rel="stylesheet" href="assets/css/social.css">
    <link rel="stylesheet" href="assets/css/extra-pages.css">

    <link rel="stylesheet" href="assets/css/button.css">
    <link rel="stylesheet" href="assets/js/calendar/css/calendar.css">


    <link rel="stylesheet" href="assets/js/tree/jquery.treeview.css">
    <link rel="stylesheet" href="../red-treeview.css">

    <link rel="stylesheet"
          href="assets/js/tree/treetable/stylesheets/jquery.treetable.css">
    <link rel="stylesheet"
          href="assets/js/tree/treetable/stylesheets/jquery.treetable.theme.default.css">

    <link href="assets/js/tree/tabelizer/tabelizer.min.css" media="all"
          rel="stylesheet" type="text/css">


    <link rel="stylesheet" href="assets/css/mail.css">


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
<!-- 设备详情模态框 -->
<div class="modal fade" id="current-detail-modal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">设备详情</h4>
            </div>
            <div class="modal-body" style="height:800px; overflow:auto;">
                <form class="form-horizontal" id="detail-form">
                    <div class="form-group">
                        <label for="detail-device-name" class="col-sm-2 control-label">设备名称</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-device-name"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-device-id" class="col-sm-2 control-label">设备编号</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-device-id"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-type" class="col-sm-2 control-label">设备型号</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-type"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-leave-no" class="col-sm-2 control-label">出厂编号</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-leave-no"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-leave-date" class="col-sm-2 control-label">出厂日期</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-leave-date"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-install-date" class="col-sm-2 control-label">安装日期</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-install-date"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-install-position"
                               class="col-sm-2 control-label">安装位置</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-install-position"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-available-year" class="col-sm-2 control-label">使用年限(年)</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-available-year"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-etc" class="col-sm-2 control-label">备注</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-etc"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-start-date" class="col-sm-2 control-label">启用日期</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-start-date"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-rated-voltage" class="col-sm-2 control-label">额定电压(V)</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-rated-voltage"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-rated-frequency"
                               class="col-sm-2 control-label">额定频率(HZ)</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-rated-frequency"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-rated-current" class="col-sm-2 control-label">额定功率(W)</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-rated-current"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-apply-factory" class="col-sm-2 control-label">供应商</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-apply-factory"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-apply-phone" class="col-sm-2 control-label">供应商联系电话</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-apply-phone"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-produce-contrary"
                               class="col-sm-2 control-label">制造国家</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-produce-contrary"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-easy-broken-thing"
                               class="col-sm-2 control-label">易损件</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-easy-broken-thing"></p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">维护保养记录</label>
                        <div class="col-sm-10">
                            <table class="record-table" id="example-detail">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>设备名称</th>
                                    <th>创建人</th>
                                    <th>创建时间</th>
                                    <th>维护时间</th>
                                    <th>问题描述</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

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
                <h4 class="modal-title">发布任务</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="add-form" style="margin-top:15px;">
                    <input type="hidden" name="adminName"
                           value="<shiro:principal></shiro:principal>"/>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">开始时间</label>
                        <div class="col-sm-10 date form_datetime input-group">
                            <input class="form-control" type="text" value="" readonly id="add-start-time"
                                   name="startTime"/>
                            <span class="input-group-addon ">
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
                            <input class="form-control" type="text" value="" readonly
                                   id="add-end-time" name="endTime"> <span
                                class="input-group-addon"> <span
                                class="glyphicon glyphicon-remove"></span>
								</span> <span class="input-group-addon"> <span
                                class="glyphicon glyphicon-calendar"></span>
								</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-ouser" class="col-sm-2 control-label" style="width:13%;">楼号</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="text" id="add-buildNo" name="buildNo" readonly
                                   style="margin-left:8px;">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-ouser" class="col-sm-2 control-label" style="width:13%;">设备</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="text" id="add-device" name="device" readonly
                                   style="margin-left:8px;">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-ouser" class="col-sm-2 control-label">操作类型</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="text" id="add-operation-type" name="operationType"
                                   readonly style="padding-left: 0;">
                        </div>
                    </div>
                    <input type="hidden" name="ids" id="add-ids"/>
                    <div class="form-group">
                        <label for="add-ouser" class="col-sm-2 control-label">指定人员</label>
                        <div class="col-sm-10">
                            <select name="ouName" id="add-ouser">

                            </select>
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
    <div class="modal-dialog" role="document">
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
<!-- 任务详情模态框 -->
<div class="modal fade" id="detail-modal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">设备</h4>
            </div>
            <div class="modal-body">
                <table id="example-device" class="device-detail-table">

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
    <div class="dark"></div>

    <div class="search-hover">
        <form id="demo-2">
            <input type="search" placeholder="Search Menu..." class="id_search">
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

                <div class="col-sm-7"></div>

            </div>
        </div>
        <!--/ TITLE -->


        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li><span class="entypo-home"></span></li>

            <li><a href="#" title="Sample page 1">首页</a></li>
        </ul>

        <!-- END OF BREADCRUMB -->
        <div class="content-wrap">
            <div
                    style="width: 48%; height: 200px; border-radius: 5px; margin: 10px; float: left; background: #789"
                    ;>
                <div
                        style="float: left; height: 150px; width: 50%; text-align: center; margin-top: 29px; border-right: 2px solid #ccc; background-color: #fff;">
                    <i class="icon icon-user-group"
                       style="font-size: 50px; line-height: 114px;    top: 180px;left: -1090px;right: 100px;position: absolute;"></i>
                    <p style="margin-top: 85px;">在线运维人员</p>
                </div>
                <div
                        style="float: left; height: 150px; width: 50%; text-align: center; margin-top: 29px; background-color: #fff;">
                    <p style="margin-top: 36px; font-size: 60px;" id="onlineCount">18</p>
                </div>
            </div>
            <div
                    style="width: 48%; height: 200px; border-radius: 5px; margin: 10px; float: left; background: #789"
                    ;>
                <div
                        style="float: left; height: 150px; width: 50%; text-align: center; margin-top: 29px; border-right: 2px solid #ccc; background-color: #fff;">
                    <i class="icon icon-warning"
                       style="font-size: 50px; line-height: 114px;    position: absolute;right: 613px;top: 185px;"></i>
                    <p style="margin-top: 85px;">当前报警</p>
                </div>
                <div
                        style="float: left; height: 150px; width: 50%; text-align: center; margin-top: 29px; background-color: #fff;">
                    <p style="margin-top: 36px; font-size: 60px;" id="alarmCount">18</p>
                </div>
            </div>
        </div>
        <!--当前报警-->

        <div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">

                    <div class="nest" id="tabletreeClose">
                        <div class="title-alt">
                            <h6>当前报警提示列表</h6>
                            <div class="titleClose">
                                <a class="gone" href="#tabletreeClose"> <span
                                        class="entypo-cancel"></span>
                                </a>
                            </div>
                            <div class="titleToggle">
                                <a class="nav-toggle-alt" href="#tabletree"> <span
                                        class="entypo-up-open"></span>
                                </a>
                            </div>

                        </div>

                        <div class="body-nest" id="tabletree">
                            <form class="form-inline" id="search-form-current">
                                <div class="form-group">
                                    <label class="sr-only">Name</label>
                                    <p class="form-control-static">楼号</p>
                                </div>
                                <select class="task-yesorno search-build-no" name="buildNo">
                                    <option></option>
                                </select>
                                <div class="form-group">
                                    <label class="sr-only">Status</label>
                                    <p class="form-control-static">楼层号</p>
                                </div>
                                <select class="task-yesorno search-layer-no" name="layerNo">
                                    <option></option>
                                </select>
                                <div class="form-group">
                                    <label class="sr-only">Name</label>
                                    <p class="form-control-static">设备类型</p>
                                </div>
                                <select class="task-yesorno" name="deviceName">
                                    <option value=""></option>
                                    <option value="摄像头">摄像头</option>
                                    <option value="排风机">排风机</option>
                                    <option value="电梯">电梯</option>
                                    <option value="气体检测仪">气体检测仪</option>
                                    <option value="温湿度传感器">温湿度传感器</option>
                                </select>


                                <!--<button type="submit" class="btn btn-default">Confirm identity</button>-->
                                <button type="button" class="btn btn-primary" id="search-btn-current">搜索</button>
                                <button type="button" class="btn btn-info" id="reset-search-btn-current">取消</button>

                            </form>


                            <table id="example-advanced" class="current-table">


                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>报警时间</th>
                                    <th>报警设备</th>
                                    <th>设备编号</th>
                                    <th>设备位置</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <button type="button" class="btn btn-primary">详情</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                </tbody>
                            </table>

                        </div>
                        <div class="row">
                            <!-- 分页信息 -->
                            <div class="col-md-4" id="page-info-current"></div>
                            <!-- 分页条 -->
                            <div class="col-md-offset-9 col-md-5">
                                <nav aria-label="Page navigation" id="page-nav-current"></nav>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <!-- 任务列表 -->
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

                            <form class="form-inline" id="task-search-form">
                                <div class="form-group">
                                    <label class="sr-only">Name</label>
                                    <p class="form-control-static">楼号</p>
                                </div>
                                <select class="task-yesorno search-build-no" name="buildNo">
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
                                <button type="button" class="btn btn-primary"
                                        id="task-search-btn">搜索
                                </button>
                                <button type="button" class="btn btn-info"
                                        id="task-reset-search-btn">取消
                                </button>
                                <button type="button" class="btn btn-primary kaoyou"
                                        id="add-btn">发布任务
                                </button>
                            </form>
                            <table id="example-detail" class="treetable task-table">

                                <thead>
                                <tr>
                                    <th><input type="checkbox" id="check-all"/></th>
                                    <th>楼号</th>
                                    <th>设备类型</th>
                                    <th>设备编号</th>
                                    <th>操作类型</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>

                        </div>
                        <div class="row">
                            <!-- 分页信息 -->
                            <div class="col-md-4" id="task-page-info"></div>
                            <!-- 分页条 -->
                            <div class="col-md-offset-9 col-md-5">
                                <nav aria-label="Page navigation" id="task-page-nav"></nav>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

        </div>
        <!--历史问题列表-->
        <div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">

                    <div class="nest" id="tabletreeClose">
                        <div class="title-alt">
                            <h6>历史问题</h6>
                            <div class="titleClose">
                                <a class="gone" href="#tabletreeClose"> <span
                                        class="entypo-cancel"></span>
                                </a>
                            </div>
                            <div class="titleToggle">
                                <a class="nav-toggle-alt" href="#tabletree"> <span
                                        class="entypo-up-open"></span>
                                </a>
                            </div>

                        </div>

                        <div class="body-nest" id="tabletree">

                            <div id="charts"
                                 style="width: 600px; height: 500px; margin: 0 auto; margin-top: 80px;">
                            </div>

                        </div>

                    </div>


                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <div class="footer-space"></div>
        <div id="footer">
            <div class="devider-footer-left"></div>
            <div class="time">
                <p id="spanDate">
                <p id="clock">
            </div>

            <div class="devider-footer"></div>

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

<script type="text/javascript" src="assets/js/echarts.common.min.js"></script>
<script type="text/javascript" src="assets/js/myplugin.js"></script>
<script>
    var baseUrl = 'http://localhost:8080/FantasyStar2';

    $(function () {
        $.ajax({
            url: baseUrl + '/getBrokenTimes',
            method: 'get',
            async: false,
            success: function (result) {
                brokenNameList = result.info.info.deviceNames;
                brokenTimesList = result.info.info.brokenTimes;
            }
        })
        var myCharts = echarts.init(document.getElementById('charts'));
        var option = {
            title: {
                text: '',
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['故障次数']
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    magicType: {show: true, type: ['line', 'bar']},
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            calculable: true,
            xAxis: [
                {
                    type: 'category',
                    //data : ['摄像头','气体监测','温湿度检测','排风口','电梯']
                    data: brokenNameList
                }
            ],
            yAxis: [
                {
                    type: 'value'
                }
            ],
            series: [
                {
                    name: '故障次数',
                    type: 'bar',
                    //data:[3, 5, 2, 9, 6],
                    data: brokenTimesList,
                    itemStyle: {
                        normal: {
                            //好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                            color: function (params) {
                                // build a color map as your need.
                                var colorList = [
                                    '#c2d4dd', '#c2d4dd', '#c2d4dd', '#c2d4dd', '#c2d4dd'
                                ];
                                return colorList[params.dataIndex]
                            },
                            //以下为是否显示，显示位置和显示格式的设置了
                            label: {
                                show: true,
                                position: 'top',
//		                             formatter: '{c}'
                                formatter: '{b}\n{c}'
                            }
                        }
                    },
                    markPoint: {
                        data: [
                            {name: '年最高', value: 182.2, xAxis: 7, yAxis: 183, symbolSize: 18},
                            {name: '年最低', value: 2.3, xAxis: 11, yAxis: 3}
                        ]
                    },

                    markLine: {
                        data: [
                            {type: 'average', name: '平均值'}
                        ]
                    }

                }
            ]
        };
        myCharts.setOption(option);
    })
</script>
<script>
    // Basic FitVids Test
    $(".blog-list-nest").fitVids();
    // Custom selector and No-Double-Wrapping Prevention Test
    $(".blog-list-nest").fitVids({
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
    var totalRecordCurrent, currentPageCurrent;
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
        to_page_current(1);
        to_task_page(1);
        build_search_form();
    });

    function to_page_current(pn) {
        $.ajax({
            url: baseUrl + '/getCurrentAlarms',
            method: 'get',
            data: $.param({
                'pn': pn
            }) + '&' + $('#search-form-current').serialize(),
            async: false,
            success: function (result) {
                if (result.code == 200) {
                    alert('出现错误')
                    return;
                }
                //console.info(result.info);
                build_table_current(result.info.pageInfo.list);
                build_page_info_current(result.info.pageInfo);
                build_nav_current(result.info.pageInfo);
            }
        })
    }

    function build_table_current(list) {
        //清空表格
        $('.current-table tbody').empty();
        $.each(list, function (index, item) {
            var idTd = $('<td scope="row"></td>').append(item.id);
            var deviceTd = $('<td></td>').append(item.deviceName);
            var logicIdTd = $('<td></td>').append(item.logicId);
            var alarmTimeTd = $('<td></td>').append(
                getDateTime(item.alarmTime));
            var positionTd = $('<td></td>').append(item.position);

            var detailBtn = $('<button></button>').addClass(
                'btn btn-info current-detail-btn').append('详情').attr('detail-id',
                item.id);
            var btnTd = $('<td></td>').append(detailBtn);

            $('<tr></tr>').append(idTd).append(alarmTimeTd)
                .append(deviceTd).append(logicIdTd).append(positionTd)
                .append(btnTd).appendTo('.current-table tbody');
        })
    }

    //解析显示分页信想
    function build_page_info_current(info) {
        $('#page-info-current').empty();
        $('#page-info-current').append(
            '&nbsp;&nbsp;&nbsp;当前第' + info.pageNum + '页，共' + info.pages
            + '页，共' + info.total + '条记录');
        totalRecordCurrent = info.total;
        currentPageCurrent = info.pageNum;
    }

    function build_nav_current(info) {
        $('#page-nav-current').empty();
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
                to_page_current(1);
            })
            prePageLi.click(function () {
                to_page_current(info.prePage);
            })
        }
        ul.append(firstPageLi).append(prePageLi);

        $.each(info.navigatepageNums, function (index, item) {
            var li = $('<li></li>').append($('<a></a>').append(item));
            if (info.pageNum == item) {
                li.addClass('active');
            }
            li.click(function () {
                to_page_current(item);
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
                to_page_current(info.pages);
            })
            nextPageLi.click(function () {
                to_page_current(info.nextPage);
            })
        }
        ul.append(nextPageLi).append(lastPageLi);
        $('#page-nav-current').append(ul);
    }

    $(document).on(
        "click",
        ".current-detail-btn",
        function () {
            $.ajax({
                url: baseUrl + '/getDeviceInfoByCurrentAlarm/'
                    + $(this).attr('detail-id'),
                method: 'get',
                success: function (result) {
                    var deviceInfo = result.info.deviceInfo;
                    $('#detail-device-name').text(
                        deviceInfo.deviceName);
                    $('#detail-device-id').text(deviceInfo.logicId);
                    $('#detail-type').text(deviceInfo.type);
                    $('#detail-leave-no').text(deviceInfo.leaveFactoryNo);
                    $('#detail-leave-date').text(getDate(deviceInfo.leaveFactoryDate));
                    $('#detail-install-date').text(getDate(deviceInfo.installDate));
                    $('#detail-install-position').text(deviceInfo.position);
                    $('#detail-available-year').text(deviceInfo.availableYear);
                    $('#detail-etc').text(deviceInfo.etc);
                    $('#detail-start-date').text(getDateTime(deviceInfo.startDate));
                    $('#detail-rated-voltage').text(deviceInfo.ratedVoltage);
                    $('#detail-rated-frequency').text(deviceInfo.ratedFrequency);
                    $('#detail-rated-current').text(deviceInfo.ratedCurrent);
                    $('#detail-apply-factory').text(deviceInfo.applyFactory);
                    $('#detail-apply-phone').text(deviceInfo.applyPhone);
                    $('#detail-produce-contrary').text(deviceInfo.produceContrary);
                    $('#detail-easy-broken-thing').text(deviceInfo.easyBrokenThing);


                    var records = result.info.records;
                    build_record_table(records);
                }
            })
            $('#current-detail-modal').modal({
                backdrop: 'static'
            })
        })

    function build_record_table(list) {
        //清空表格
        $('.record-table tbody').empty();
        $.each(list, function (index, item) {
            var idTd = $('<td></td>').append(item.id);
            var nameTd = $('<td></td>').append(item.deviceName);
            var operUserTd = $('<td></td>').append(item.ouName);
            var createTimeTd = $('<td></td>').append(getDateTime(item.createTime));
            var maintenanceTimeTd = $('<td></td>').append(getDateTime(item.maintenanceTime));
            var contentTd = $('<td></td>').append(item.content);

            $('<tr></tr>').append(idTd).append(nameTd).append(operUserTd).append(createTimeTd)
                .append(maintenanceTimeTd).append(contentTd).appendTo('.record-table tbody');
        })
    }

    $('#search-btn-current').click(function () {
        to_page_current(1);
    })
    $('#reset-search-btn-current').click(function () {
        $('#search-form-current')[0].reset();
        to_page_current(1);
    })

    //---------------任务-------------------------
    function to_task_page(pn) {

        $.ajax({
            url: baseUrl + '/getPlans',
            method: 'get',
            data: $.param({
                'pn': pn
            }) + '&' + $('#task-search-form').serialize(),
            async: false,
            success: function (result) {
                if (result.code == 200) {
                    alert('出现错误')
                    return;
                }
                build_task_table(result.info.pageInfo.list);
                build_task_page_info(result.info.pageInfo);
                build_task_nav(result.info.pageInfo);
            }
        })

    }

    function build_task_table(list) {
        //清空表格
        $('.task-table tbody').empty();
        $.each(list, function (index, item) {
            var checkBoxTd = $("<td><input type='checkbox' class='check-item'/></td>");
            var hiddenIdTd = $('<input type="hidden"/>').val(item.id);
            var buildNoTd = $('<td></td>').append(item.buildNo);
            var deviceTd = $('<td></td>').append(item.deviceName);
            var logicIdTd = $('<td></td>').append(item.logicId);
            var operationTypeTd = $('<td></td>').append(item.operationType);

            $('<tr></tr>').append(checkBoxTd).append(hiddenIdTd).append(buildNoTd)
                .append(deviceTd).append(logicIdTd)
                .append(operationTypeTd).appendTo('.task-table tbody');
        })
    }

    //解析显示分页信想
    function build_task_page_info(info) {
        $('#task-page-info').empty();
        $('#task-page-info').append(
            '&nbsp;&nbsp;&nbsp;当前第' + info.pageNum + '页，共' + info.pages
            + '页，共' + info.total + '条记录');
        totalRecord = info.total;
        currentPage = info.pageNum;
    }

    function build_task_nav(info) {
        $('#task-page-nav').empty();
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
        $('#task-page-nav').append(ul);
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

    //完成全选/全不选功能
    $("#check-all").click(function () {
        //attr获取checked是undefined;
        //我们这些dom原生的属性；attr获取自定义属性的值；
        //prop修改和读取dom原生属性的值
        $(".check-item").prop("checked", $(this).prop("checked"));
    });

    //check-item
    $(document).on("click", ".check-item", function () {
        //判断当前选择中的元素是否是5个
        var flag = $(".check-item:checked").length == $(".check-item").length;
        $("#check-all").prop("checked", flag);
    });

    $('#add-btn').click(function () {
        if ($(".check-item:checked").length == 0) {
            alert('请至少选择一个')
            return;
        }

        //判断是否选的都是同一个操作类型
        var types = "";
        var count = 0;
        $.each($(".check-item:checked"), function () {
            types += $(this).parents("tr").find("td:eq(4)").text();
        });
        if (types.indexOf("维护") != -1) {
            count++;
        }
        if (types.indexOf("检查") != -1) {
            count++;
        }
        if (types.indexOf("保养") != -1) {
            count++;
        }
        if (count > 1) {
            $("#check-all").prop("checked", false);
            $(".check-item").prop("checked", false);
            alert('请选择相同的操作类型');
            return;
        }

        var type = "";
        var buildNo = "";
        var device = "";
        var ids = "";
        $.each($(".check-item:checked"), function () {
            type = $(this).parents("tr").find("td:eq(4)").text();
            buildNo = $(this).parents("tr").find("td:eq(1)").text();
            //设备名和逻辑id之间用：隔开
            device += $(this).parents("tr").find("td:eq(2)").text() + ":";
            //设备与设备之间用,隔开
            device += $(this).parents("tr").find("td:eq(3)").text() + ",";

            ids += $(this).parents("tr").find("input:eq(1)").val() + ",";
        });

        $('#add-buildNo').val(buildNo);
        $('#add-operation-type').val(type);
        $('#add-device').val(device);
        $('#add-ids').val(ids);
        console.info(ids);

        //运维人员
        $.ajax({
            url: baseUrl + '/getOpernames',
            method: 'GET',
            success: function (result) {
                var names = result.info.opernames;
                for (var i = 0; i < names.length; i++) {
                    $('#add-ouser').append($('<option></option>').text(names[i]).val(names[i]));
                }
            }
        })

        $('#add-modal').modal({
            backdrop: 'static'
        })
    })


    //保存任务
    $('#save-btn').click(function () {
        $.ajax({
            url: baseUrl + '/saveTask',
            method: 'POST',
            async: false,
            data: $('#add-form').serialize(),
            success: function (result) {

            }
        })
        //关闭新增模态框
        $('#add-modal').modal('hide');
        to_task_page(totalRecord);
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
        to_task_page(currentPage);
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
            to_task_page(currentPage);
        }
    })


    function build_search_form() {
        $.ajax({
            url: baseUrl + '/getIndexInfo',
            method: 'get',
            success: function (result) {
                var no = result.info.no;
                $('.search-build-no').empty();
                $('.search-build-no').append($('<option></option>'));
                for (var i = 1; i <= no.buildNo; i++) {
                    $('.search-build-no').append($('<option></option>').text(i).val(i));
                }
                $('.search-layer-no').empty();
                $('.search-layer-no').append($('<option></option>'));
                for (var i = 1; i <= no.layerNo; i++) {
                    $('.search-layer-no').append($('<option></option>').text(i).val(i));
                }

                //在线运维人员数和报警数
                $('#onlineCount').text(result.info.onlineCount);
                $('#alarmCount').text(result.info.alarmCount);
            }
        })
    }

    $('#task-search-btn').click(function () {
        to_task_page(1);
    })
    $('#task-reset-search-btn').click(function () {
        $('#task-search-form')[0].reset();
        to_task_page(1);
    })


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

    $("#example-advanced .folder").each(function () {
        $(this).parents("#example-advanced tr").droppable({
            accept: ".file, .folder",
            drop: function (e, ui) {
                var droppedEl = ui.draggable.parents("tr");
                $("#example-advanced").treetable("move", droppedEl.data("ttId"), $(this).data("ttId"));
            },
            hoverClass: "accept",
            over: function (e, ui) {
                var droppedEl = ui.draggable.parents("tr");
                if (this != droppedEl[0] && !$(this).is(".expanded")) {
                    $("#example-advanced").treetable("expandNode", $(this).data("ttId"));
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

    //继续自定义，给的模板太差，表格就不该用id
    $("#example-device").treetable({
        expandable: true
    });

    // Highlight selected row
    $("#example-device tbody").on("mousedown", "tr", function () {
        $(".selected").not(this).removeClass("selected");
        $(this).toggleClass("selected");
    });

    // Drag & Drop Example Code
    $("#example-device .file, #example-advanced .folder").draggable({
        helper: "clone",
        opacity: .75,
        refreshPositions: true, // Performance?
        revert: "invalid",
        revertDuration: 300,
        expandable: true,
        scroll: true
    });

    $("#example-device .folder").each(
        function () {
            $(this).parents("#example-device tr").droppable(
                {
                    accept: ".file, .folder",
                    drop: function (e, ui) {
                        var droppedEl = ui.draggable.parents("tr");
                        $("#example-device").treetable("move",
                            droppedEl.data("ttId"),
                            $(this).data("ttId"));
                    },
                    hoverClass: "accept",
                    over: function (e, ui) {
                        var droppedEl = ui.draggable.parents("tr");
                        if (this != droppedEl[0]
                            && !$(this).is(".expanded")) {
                            $("#example-device").treetable(
                                "expandNode",
                                $(this).data("ttId"));
                        }
                    }
                });
        });

    $("form#reveal").submit(function () {
        var nodeId = $("#revealNodeId").val()

        try {
            $("#example-device").treetable("reveal", nodeId);
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