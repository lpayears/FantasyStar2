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

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/css/extra-pages.css">


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


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>

<body>


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
                <h4 class="modal-title">维修单</h4>
            </div>
            <div class="modal-body">
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
                        <label for="detail-ou-name" class="col-sm-2 control-label">创建人</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-ou-name"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-ou-phone" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-ou-phone"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-create-time" class="col-sm-2 control-label">创建时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-create-time"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-maintence-time" class="col-sm-2 control-label">维护时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-maintence-time"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-maintenance-status" class="col-sm-2 control-label">维护情况</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-maintenance-status"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-content" class="col-sm-2 control-label">问题描述</label>
                        <div class="col-sm-10">
                            <input class="form-control-static" id="detail-content" type="text"
                                   style="border:none; color:#a7afba;"/>
                            <!-- 								<p class="form-control-static" id="detail-content"></p> -->
                            <button type="button" class="btn btn-info" id="picture-btn">现场图</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-position" class="col-sm-2 control-label">位置</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-position"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-admin" class="col-sm-2 control-label">派单人</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-admin"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail-maintence-person" class="col-sm-2 control-label">维修人员</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="detail-maintence-person"></p>
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

<div class="modal fade" id="picture-modal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width: 70%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">现场图</h4>
            </div>
            <div class="modal-body" style="height: 700px;">
                <img alt="现场图" src="img/现场图.png" style="width:100%;">
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
            <div id="paper-top"></div>
        </div>
        <!--/ TITLE -->

        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li><span class="entypo-newspaper"></span></li>
            <li><a href="#" title="Sample page 1">设备管理</a></li>
            <li><i class="fa fa-lg fa-angle-right"></i></li>
            <li><a href="#" title="Sample page 1">设备维护</a></li>

        </ul>

        <!-- END OF BREADCRUMB -->
        <div class="content-wrap">
            <div class="content-wrap">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="nest" id="tabletreeClose">
                            <div class="title-alt">
                                <h6>维护信息列表</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#tabletreeClose"> <span
                                            class="entypo-cancel"></span>
                                    </a>
                                </div>


                            </div>

                            <div class="body-nest" id="tabletree">

                                <form class="form-inline" id="search-form">
                                    <div class="form-group">
                                        <label class="sr-only">Name</label>
                                        <p class="form-control-static">楼号</p>
                                    </div>
                                    <select class="task-yesorno" id="search-build-no" name="buildNo">
                                        <option></option>
                                    </select>
                                    <div class="form-group">
                                        <label class="sr-only">Status</label>
                                        <p class="form-control-static">楼层号</p>
                                    </div>
                                    <select class="task-yesorno" id="search-layer-no" name="layerNo">
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
                                    <button type="button" class="btn btn-primary" id="search-btn">搜索</button>
                                    <button type="button" class="btn btn-info" id="reset-search-btn">取消</button>

                                </form>
                                <table id="example-advanced" class="maintain-table">


                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>设备名称</th>
                                        <th>创建人</th>
                                        <th style="width: 13%">创建时间</th>
                                        <th style="width: 13%">维护时间</th>
                                        <!-- 												<th style="width: 13%">维护类型</th> -->
                                        <th style="width: 13%">维护情况</th>
                                        <th>问题描述</th>
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
                                        <td>6</td>
                                        <td>7</td>
                                        <td>8</td>
                                        <td>
                                            <button type="button" class="btn btn-primary ">查看</button>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
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
<script type="text/javascript" src="assets/js/myplugin.js"></script>
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
            url: baseUrl + '/getMaintainInfos',
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
        $('.maintain-table tbody').empty();
        $.each(list, function (index, item) {
            var idTd = $('<td scope="row"></td>').append(item.id);
            var deviceNameTd = $('<td></td>').append(item.deviceName);
            var ouNameTd = $('<td></td>').append(item.ouName);
            var createTimeTd = $('<td></td>').append(
                getDateTime(item.createTime));
            var maintenanceTimeTd;
            if (item.maintenanceTime == null) {
                maintenanceTimeTd = $('<td></td>').append(item.maintenanceTime);
            } else {
                maintenanceTimeTd = $('<td></td>').append(getDateTime(item.maintenanceTime));
            }
            var maintenanceStatusTd = $('<td></td>').append(
                item.maintenanceStatus == 'Y' ? '已维护' : '未维护');
            var contentTd = $('<td></td>').append(item.content);

            var detailBtn = $('<button></button>').addClass(
                'btn btn-info btn-xs detail-btn').append('详情').attr(
                'detail-id', item.id);
            var btnTd = $('<td></td>').append(detailBtn);

            $('<tr></tr>').append(idTd).append(deviceNameTd).append(
                ouNameTd).append(createTimeTd)
                .append(maintenanceTimeTd).append(maintenanceStatusTd)
                .append(contentTd).append(btnTd).appendTo(
                '.maintain-table tbody');
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

    //在创建按钮之前绑定click事件是不能绑定的，所以用on绑定
    $(document).on(
        "click",
        ".detail-btn",
        function () {
            $.ajax({
                url: baseUrl + '/getMaintainInfo/'
                    + $(this).attr('detail-id'),
                method: 'get',
                success: function (result) {
                    var recordData = result.info.record;
                    $('#detail-device-name').text(recordData.deviceName);
                    $('#detail-device-id').text(recordData.logicId);
                    $('#detail-ou-name').text(recordData.ouName);
                    $('#detail-ou-phone').text(recordData.ouPhone);
                    $('#detail-create-time').text(
                        getDateTime(recordData.createTime));
                    $('#detail-maintence-time').text(
                        getDateTime(recordData.maintenanceTime));
                    $('#detail-maintenance-status').text(recordData.maintenanceStatus == "Y" ? '已维护' : '未维护');
                    $('#detail-content').val(recordData.content);
                    $('#detail-position').text(recordData.position);
                    $('#detail-admin').text(recordData.adminName);
                    $('#detail-maintence-person').text(recordData.maintenancePerson);

                }
            })
            $('#detail-modal').modal({
                backdrop: 'static'
            })
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

    $('#picture-btn').click(function () {
        $('#picture-modal').modal({
            backdrop: 'static'
        })
    });

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
