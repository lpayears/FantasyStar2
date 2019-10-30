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
    <script src="assets/js/wizard/lib/modernizr-2.6.2.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">


    <link rel="stylesheet" href="assets/js/wizard/css/jquery.steps.css">
    <link type="text/css" rel="stylesheet"
          href="assets/js/wizard/jquery.stepy.css">
    <link href="assets/js/tabs/acc-wizard.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css"
          href="assets/css/fullcalendar.css">


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
            <li><span class="fontawesome-calendar"></span></li>

            <li><a href="#" title="Sample page 1">运维规划</a></li>

        </ul>

        <!-- END OF BREADCRUMB -->


        <div class="content-wrap" style="background-color: #fff;">
            <div class="row">
                <div id='calendar'
                     style="width: 85%; text-align: center; margin: 0 auto; margin-top: 30px;">
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


<!-- END OF RIGHT SLIDER CONTENT-->


<!-- MAIN EFFECT -->
<script type="text/javascript" src="assets/js/preloader.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/load.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>
<script src="assets/js/wizard/lib/jquery.cookie-1.3.1.js"></script>
<script src="assets/js/wizard/build/jquery.steps.js"></script>
<script type="text/javascript" src="assets/js/wizard/jquery.stepy.js"></script>


<script>
    $(function () {
        $("#wizard").steps({
            headerTag: "h2",
            bodyTag: "section",
            transitionEffect: "slideLeft"
        });

        $("#wizard_vertical").steps({
            headerTag: "h2",
            bodyTag: "section",
            transitionEffect: "slideLeft",
            stepsOrientation: "vertical"
        });

        $("#wizard-tab").steps({
            headerTag: "h2",
            bodyTag: "section",
            transitionEffect: "none",
            enableFinishButton: false,
            enablePagination: false,
            enableAllSteps: true,
            titleTemplate: "#title#",
            cssClass: "tabcontrol"
        });

        //stepy
        $('#transition-duration-demo').stepy({
            duration: 400,
            transition: 'fade'
        });

    });
</script>
<script language="javascript" type="text/javascript"
        src="assets/js/fullcalendar.min.js"></script>
<script>
    $(document).ready(function () {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var calendar = $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            selectable: true,
            selectHelper: true,
            select: function (start, end, allDay) {
                var title = prompt('Event Title:');
                if (title) {
                    calendar.fullCalendar('renderEvent', {
                            title: title,
                            start: start,
                            end: end,
                            allDay: allDay
                        }, true // make the event "stick"
                    );
                }
                calendar.fullCalendar('unselect');
            },
            editable: true,
            events: [{
                title: '1号楼2号楼电梯保养',
                start: new Date(y, m, 1)
            }, {
                title: '温湿度检测设备常规检查',
                start: new Date(y, m, d + 5),
                end: new Date(y, m, d + 7)
            }, {
                id: 999,
                title: '3号楼电梯检查',
                start: new Date(y, m, d - 3, 16, 0),
                allDay: false
            }, {
                id: 999,
                title: '所有排风口检查',
                start: new Date(y, m, d + 4, 16, 0),
                allDay: false
            }, {
                title: '1号楼摄像头维护',
                start: new Date(y, m, d, 10, 30),
                allDay: false
            }]
        });
    });
</script>
</body>

</html>
