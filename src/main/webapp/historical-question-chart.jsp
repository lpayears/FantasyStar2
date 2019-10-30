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
            <!--/ TITLE -->

            <!-- BREADCRUMB -->
            <ul id="breadcrumb">
                <li><span class="icon icon-graph-bar"></span></li>

                <li><a href="#" title="Sample page 1">历史问题图表</a></li>


            </ul>

            <div class="content-wrap">
                <div class="row">


                    <div class="col-sm-12">
                        <!-- BLANK PAGE-->


                        <!-- END OF BLANK PAGE -->


                    </div>


                    <!-- /END OF CONTENT -->

                    <div class="body-nest" id="tabletree" style="margin-top: 20px;">

                        <div id="charts"
                             style="width: 600px; height: 500px; margin: 0 auto; margin-top: 80px;">
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

            <script src="assets/js/tree/lib/jquery.cookie.js"
                    type="text/javascript"></script>
            <script src="assets/js/tree/jquery.treeview.js"
                    type="text/javascript"></script>


            <script
                    src="assets/js/tree/tabelizer/jquery-ui-1.10.4.custom.min.js"></script>
            <script src="assets/js/tree/tabelizer/jquery.tabelizer.js"></script>

            <script src="assets/js/tree/treetable/vendor/jquery-ui.js"></script>
            <script
                    src="assets/js/tree/treetable/javascripts/src/jquery.treetable.js"></script>
            <script type="text/javascript" src="assets/js/echarts.common.min.js"></script>
            <script type="text/javascript" src="assets/js/myplugin.js"></script>
            <script>
                var baseUrl = 'http://localhost:8080/FantasyStar2';
                var brokenTimesList, brokenNameList;
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
//					                             formatter: '{c}'
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
            <script type="text/javascript">
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
        </div>
</body>

</html>
