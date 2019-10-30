<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>致微后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="admin">
    <meta name="author" content="matirasa">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/js/button/ladda/ladda.min.css">
    <style type="text/css">
        .button-demo, .progress-demo {
            display: inline-block;
            margin-right: 3px;
            margin-bottom: 20px;
        }
    </style>

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
    <script src="https://static.bimface.com/api/BimfaceSDKLoader/BimfaceSDKLoader@latest-release.js"
            charset="utf-8"></script>
</head>

<body>

<a href="javascript:openLogin();">打开登录框</a>
<div id="back"
     style="z-index:9998;display:none; POSITION:absolute; left:0; top:0; width:100%; height:100%; background-color:#000; filter:alpha(opacity=30)"></div>
<div id="win"
     style="z-index:9999; display:none; POSITION:absolute; left:50%; top:50%s width:600px; height:400px; margin-left:-300px; margin-top:-200px; border:1px solid #888; background-color:#fff; text-align:center">
    <a href="javascript:closeLogin();">关闭登录框</a>

</div>


<!-- 详情模态框 -->
<div class="modal fade" id="detail-modal" tabindex="-1" role="dialog"
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
                        <label for="detail-available-year" class="col-sm-2 control-label">使用年限</label>
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
                        <label for="detail-rated-voltage" class="col-sm-2 control-label">额定电压</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-rated-voltage"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-rated-frequency"
                               class="col-sm-2 control-label">额定频率</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-rated-frequency"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-rated-current" class="col-sm-2 control-label">额定功率</label>
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
            <div id="paper-top"></div>
        </div>
        <!--/ TITLE -->

        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li><span class="fontawesome-warning-sign"></span></li>

            <li><a href="#" title="Sample page 1">报警提示</a></li>


        </ul>

        <!-- END OF BREADCRUMB -->


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

        <div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">

                    <div class="nest" id="tabletreeClose">
                        <div class="title-alt">
                            <h6>历史报警提示列表</h6>
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
                            <form class="form-inline" id="search-form-history">
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
                                <button type="button" class="btn btn-primary" id="search-btn-history">搜索</button>
                                <button type="button" class="btn btn-info"
                                        id="reset-search-btn-history">取消
                                </button>

                            </form>


                            <table id="example-advanced" class="treetable history-table">


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
                                    <td></td>
                                </tr>

                                </tbody>
                            </table>

                        </div>

                        <div class="row">
                            <!-- 分页信息 -->
                            <div class="col-md-4" id="page-info-history"></div>
                            <!-- 分页条 -->
                            <div class="col-md-offset-9 col-md-5">
                                <nav aria-label="Page navigation" id="page-nav-history"></nav>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

        <div class="content-wrap">
            <div class="row"></div>
        </div>


        <div class="content-wrap">
            <div class="row"></div>
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
<script src="assets/js/button/ladda/spin.min.js"></script>
<script src="assets/js/button/ladda/ladda.min.js"></script>
<script type='text/javascript'
        src='assets/js/button/progressbutton.jquery.js'></script>
<script>
    jQuery(document).ready(function ($) {
        var interval;
        var bar = jQuery('.main').progressbutton();
        jQuery('#reset').click(function () {
            clearInterval(interval);
            if (bar) {
                bar.progressbutton('reset');
            }
        });
        jQuery('.color').click(function () {
            //clearInterval(interval);
            var clicked = jQuery(this);
            bar.progressbutton({
                color: clicked.data('color')
            });
        });
        jQuery('.opacity').click(function () {
            //clearInterval(interval);
            var clicked = jQuery(this);
            bar.progressbutton({
                opacity: clicked.data('opacity')
            });
        });

        jQuery('.test').click(function () {
            var itm = jQuery(this);
            if (itm.hasClass('disable')) {
                itm.attr('disabled', 'disabled');
            }
            var bar = itm.progressbutton({
                percent: -1
            });
            var clock = 0;

            var interval = setInterval(function () {
                bar.progressbutton({
                    percent: clock
                });
                clock = clock + 0.5;
                if (clock > 100) {
                    itm.removeAttr('disabled');
                    clearInterval(interval);
                    bar.progressbutton('reset');
                }
            }, 30);
        });
        jQuery('.action').click(function () {
            clearInterval(interval);
            var clicked = jQuery(this);
            bar.progressbutton({
                percent: clicked.data('percent')
            });
        });
        jQuery('.other').click(function () {
            var itm = jQuery('#standard');
            var bar = itm.progressbutton({
                percent: -1
            });
            var clock = 0;

            var interval = setInterval(function () {
                bar.progressbutton({
                    percent: clock
                });
                clock = clock + 0.5;
                if (clock > 100) {
                    clearInterval(interval);
                    bar.progressbutton('reset');
                }
            }, 30);
        });

    });
</script>

<script>
    // Bind normal buttons
    Ladda.bind('.button-demo button', {
        timeout: 2000
    });

    // Bind progress buttons and simulate loading progress
    Ladda.bind('.progress-demo button', {
        callback: function (instance) {
            var progress = 0;
            var interval = setInterval(function () {
                progress = Math.min(progress + Math.random() * 0.1, 1);
                instance.setProgress(progress);

                if (progress === 1) {
                    instance.stop();
                    clearInterval(interval);
                }
            }, 200);
        }
    });

    // You can control loading explicitly using the JavaScript API
    // as outlined below:

    // var l = Ladda.create( document.querySelector( 'button' ) );
    // l.start();
    // l.stop();
    // l.toggle();
    // l.isLoading();
    // l.setProgress( 0-1 );
</script>

<script src="assets/js/tree/lib/jquery.cookie.js"
        type="text/javascript"></script>
<script src="assets/js/tree/jquery.treeview.js" type="text/javascript"></script>


<script src="assets/js/tree/tabelizer/jquery-ui-1.10.4.custom.min.js"></script>
<script src="assets/js/tree/tabelizer/jquery.tabelizer.js"></script>

<script src="assets/js/tree/treetable/vendor/jquery-ui.js"></script>
<script
        src="assets/js/tree/treetable/javascripts/src/jquery.treetable.js"></script>
<script type="text/javascript" src="assets/js/myplugin.js"></script>

<script type="text/javascript">
    var totalRecordCurrent, currentPageCurrent;
    var totalRecordHistory, currentPageHistory;
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
        to_page_current(1);
        to_page_history(1);
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

            var viewBtn = $('<button></button>').addClass(
                'btn btn-info btn-xs view-btn').append('查看').attr("onclick", "location.href='http://localhost:8080/FantasyStar2/view3.jsp'")

            var btnTd = $('<td></td>').append(viewBtn);

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

    //--------------------------历史报警-------------------------------------
    function to_page_history(pn) {
        $.ajax({
            url: baseUrl + '/getHistoryAlarms',
            method: 'get',
            data: $.param({
                'pn': pn
            }) + '&' + $('#search-form-history').serialize(),
            async: false,
            success: function (result) {
                if (result.code == 200) {
                    alert('出现错误')
                    return;
                }
                //console.info(result.info);
                build_table_history(result.info.pageInfo.list);
                build_page_info_history(result.info.pageInfo);
                build_nav_history(result.info.pageInfo);
            }
        })
    }

    function build_table_history(list) {
        //清空表格
        $('.history-table tbody').empty();
        $.each(list, function (index, item) {
            var idTd = $('<td scope="row"></td>').append(item.id);
            var deviceTd = $('<td></td>').append(item.deviceName);
            var logicIdTd = $('<td></td>').append(item.logicId);
            var alarmTimeTd = $('<td></td>').append(
                getDateTime(item.alarmTime));
            var positionTd = $('<td></td>').append(item.position);

            var detailBtn = $('<button></button>').addClass(
                'btn btn-info detail-btn').append('详情').attr('detail-id',
                item.id).attr('type', 'history');
            var btnTd = $('<td></td>').append(detailBtn);

            $('<tr></tr>').append(idTd).append(alarmTimeTd)
                .append(deviceTd).append(logicIdTd).append(positionTd)
                .append(btnTd).appendTo('.history-table tbody');
        })
    }

    //解析显示分页信想
    function build_page_info_history(info) {
        $('#page-info-history').empty();
        $('#page-info-history').append(
            '&nbsp;&nbsp;&nbsp;当前第' + info.pageNum + '页，共' + info.pages
            + '页，共' + info.total + '条记录');
        totalRecordHistory = info.total;
        currentPageHistory = info.pageNum;
    }

    function build_nav_history(info) {
        $('#page-nav-history').empty();
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
                to_page_history(1);
            })
            prePageLi.click(function () {
                to_page_history(info.prePage);
            })
        }
        ul.append(firstPageLi).append(prePageLi);

        $.each(info.navigatepageNums, function (index, item) {
            var li = $('<li></li>').append($('<a></a>').append(item));
            if (info.pageNum == item) {
                li.addClass('active');
            }
            li.click(function () {
                to_page_history(item);
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
                to_page_history(info.pages);
            })
            nextPageLi.click(function () {
                to_page_history(info.nextPage);
            })
        }
        ul.append(nextPageLi).append(lastPageLi);
        $('#page-nav-history').append(ul);
    }

    //在创建按钮之前绑定click事件是不能绑定的，所以用on绑定
    $(document).on(
        "click",
        ".detail-btn",
        function () {
            var chgUrl;
            if ($(this).attr('type') == 'current') {
                chgUrl = '/getDeviceInfoByCurrentAlarm/';
            } else {
                chgUrl = '/getDeviceInfoByHistoryAlarm/';
            }
            $.ajax({
                url: baseUrl + chgUrl
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
                    $('#detail-available-year').text(deviceInfo.availableYear + '年');
                    $('#detail-etc').text(deviceInfo.etc);
                    $('#detail-start-date').text(getDateTime(deviceInfo.startDate));
                    $('#detail-rated-voltage').text(deviceInfo.ratedVoltage + 'V');
                    $('#detail-rated-frequency').text(deviceInfo.ratedFrequency + 'HZ');
                    $('#detail-rated-current').text(deviceInfo.ratedCurrent + 'W');
                    $('#detail-apply-factory').text(deviceInfo.applyFactory);
                    $('#detail-apply-phone').text(deviceInfo.applyPhone);
                    $('#detail-produce-contrary').text(deviceInfo.produceContrary);
                    $('#detail-easy-broken-thing').text(deviceInfo.easyBrokenThing);


                    var records = result.info.records;
                    build_record_table(records);
                }
            })
            $('#detail-modal').modal({
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

    $('#search-btn-history').click(function () {
        to_page_history(1);
    })
    $('#reset-search-btn-history').click(function () {
        $('#search-form-history')[0].reset();
        to_page_history(1);
    })

    function build_search_form() {
        $.ajax({
            url: baseUrl + '/getNo',
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
            }
        })
    }

    $(document).on("click", ".view-btn", function () {
        $('#view-modal').modal();
    })

    function openLogin() {
        document.getElementById("win").style.display = "";
        document.getElementById("back").style.display = "";
    }

    function closeLogin() {
        document.getElementById("win").style.display = "none";
        document.getElementById("back").style.display = "none";
    }

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
    $("#example-detail .file, #example-advanced .folder")
        .draggable({
            helper: "clone",
            opacity: .75,
            refreshPositions: true, // Performance?
            revert: "invalid",
            revertDuration: 300,
            expandable: true,
            scroll: true
        });

    $("#example-detail .folder")
        .each(
            function () {
                $(this)
                    .parents("#example-detail tr")
                    .droppable(
                        {
                            accept: ".file, .folder",
                            drop: function (e, ui) {
                                var droppedEl = ui.draggable
                                    .parents("tr");
                                $(
                                    "#example-detail")
                                    .treetable(
                                        "move",
                                        droppedEl
                                            .data("ttId"),
                                        $(
                                            this)
                                            .data(
                                                "ttId"));
                            },
                            hoverClass: "accept",
                            over: function (e, ui) {
                                var droppedEl = ui.draggable
                                    .parents("tr");
                                if (this != droppedEl[0]
                                    && !$(this)
                                        .is(
                                            ".expanded")) {
                                    $(
                                        "#example-detail")
                                        .treetable(
                                            "expandNode",
                                            $(
                                                this)
                                                .data(
                                                    "ttId"));
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
