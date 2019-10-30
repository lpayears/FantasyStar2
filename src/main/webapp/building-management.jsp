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
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/js/button/ladda/ladda.min.css">

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
                <h4 class="modal-title">新增楼宇</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="add-form">
                    <div class="form-group">
                        <label for="add-build-no" class="col-sm-2 control-label">楼号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="buildNo"
                                   id="add-build-no">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-layer-no" class="col-sm-2 control-label">层号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="layerNo"
                                   id="add-layer-no">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal"
                        id="save-btn">保存
                </button>
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
                <h4 class="modal-title">设备详情</h4>
            </div>
            <div class="modal-body" style="height: 800px; overflow: auto;">
                <form class="form-horizontal" id="detail-form">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <table class="device-table" id="example-detail">
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
                                    <th>使用年限(年)</th>
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


            </div>
        </div>
        <!--/ TITLE -->

        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li><span class="icon icon-location"></span></li>

            <li><a href="#" title="Sample page 1">楼宇管理</a></li>


        </ul>

        <!-- END OF BREADCRUMB -->

        <div class="content-wrap">
            <div class="row">
                <div class="col-sm-12">

                    <div class="nest" id="tabletreeClose">
                        <div class="title-alt">
                            <h6>楼宇信息列表</h6>
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
                            <form class="form-inline" id="search-form">
                                <div class="form-group">
                                    <label class="sr-only">Name</label>
                                    <p class="form-control-static">楼号</p>
                                </div>
                                <select class="task-yesorno" id="search-build-no"
                                        name="buildNo">
                                    <option></option>
                                </select>
                                <div class="form-group">
                                    <label class="sr-only">Status</label>
                                    <p class="form-control-static">楼层号</p>
                                </div>
                                <select class="task-yesorno" id="search-layer-no"
                                        name="layerNo">
                                    <option></option>
                                </select>

                                <!--<button type="submit" class="btn btn-default">Confirm identity</button>-->
                                <button type="button" class="btn btn-primary" id="search-btn">搜索</button>
                                <button type="button" class="btn btn-info" id="reset-search-btn">取消</button>
                                <button type="button" class="btn btn-primary kaoyou"
                                        id="add-btn">新增
                                </button>

                            </form>


                            <table id="example-advanced" class="build-table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>楼号</th>
                                    <th>层号</th>
                                    <th>设备详情</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <button type="button" class="btn btn-primary">查看</button>
                                    </td>
                                </tr>
                                <tr>
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

        <!-- /Labels and Badges -->

        <!-- /END OF CONTENT -->


        <!-- FOOTER -->
        <div class="footer-space"></div>
        <div id="footer">

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
<!-- PLUG IN -->
<script type="text/javascript"
        src="assets/js/pnotify/jquery.pnotify.min.js"></script>


<script type="text/javascript">
    $('.btn').tooltip();
</script>
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
            url: baseUrl + '/getBuildings',
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
        $('.build-table tbody').empty();
        $
            .each(
                list,
                function (index, item) {
                    var idTd = $('<td scope="row"></td>').append(
                        item.id);
                    var buildNoTd = $('<td></td>').append(
                        item.buildNo);
                    var layerNoTd = $('<td></td>').append(
                        item.layerNo);
                    var btnTd = $('<td></td>')
                        .append(
                            $(
                                '<button type="button" class="btn btn-primary"></button>')
                                .append('查看')
                                .attr("onclick", "location.href='http://localhost:8080/FantasyStar2/view2.jsp'"))

                    $('<tr></tr>').append(idTd).append(buildNoTd)
                        .append(layerNoTd).append(btnTd)
                        .appendTo('.build-table tbody');
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

    $('#add-btn').click(function () {
        $('#add-modal').modal({
            backdrop: 'static'
        })
    })
    $('#add-modal').on('hidden.bs.modal', function (e) {
        $('#add-form')[0].reset();
    })
    $('#save-btn').click(function () {
        $.ajax({
            url: baseUrl + '/saveBuilding',
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

    $(document).on(
        "click",
        ".info-btn",
        function () {

            $.ajax({
                url: baseUrl + '/getBuildingDevice/'
                    + $(this).attr('info-id'),
                method: 'get',
                success: function (result) {
                    var deviceDetails = result.info.deviceDetails;
                    $('.device-table tbody').empty();
                    $.each(deviceDetails, function (index, item) {
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
                        var positionTd = $('<td></td>').append(
                            item.position);
                        var availableYearTd = $('<td></td>').append(
                            item.availableYear);

                        $('<tr></tr>').append(nameTd).append(noTd)
                            .append(typeTd).append(applyFactoryTd)
                            .append(leaveFactoryNoTd).append(
                            leaveFactoryDateTd).append(
                            installDateTd).append(
                            positionTd).append(
                            availableYearTd).appendTo(
                            '.device-table tbody');
                    })
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

    //日期转换
    function getDate(timestamp) {
        //timestamp是整数，否则要parseInt转换
        var time = new Date(timestamp);
        var y = time.getFullYear();
        var m = time.getMonth() + 1;
        var d = time.getDate();
        return y + '-' + m + '-' + d;
    }

    function getDateTime(timestamp) {
        //timestamp是整数，否则要parseInt转换
        if (timestamp == null) {
            return;
        }
        var time = new Date(timestamp);
        var y = time.getFullYear();
        var m = time.getMonth() + 1;
        var d = time.getDate();
        var h = time.getHours();
        var mm = time.getMinutes();
        var s = time.getSeconds();
        if (h < 10) {
            h = '0' + h;
        }
        if (mm < 10) {
            mm = '0' + mm;
        }
        if (s < 10) {
            s = '0' + s;
        }
        return y + '-' + m + '-' + d + ' ' + h + ':' + mm + ':' + s;
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
