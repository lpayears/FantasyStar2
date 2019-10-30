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
    <script
            src="https://static.bimface.com/api/BimfaceSDKLoader/BimfaceSDKLoader@latest-release.js"
            charset="utf-8"></script>
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">


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
                <h4 class="modal-title">新增设备</h4>
            </div>
            <div class="modal-body" style="height: 800px; overflow: auto;">
                <form class="form-horizontal" id="add-form">
                    <div class="form-group">
                        <label for="add-device-name" class="col-sm-2 control-label">设备选择</label>
                        <div class="col-sm-10">
                            <select class="search-build-no" name="deviceName"
                                    id="add-device-name">
                                <option></option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-device-id" class="col-sm-2 control-label">设备编号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="logicId"
                                   id="add-device-id">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-type" class="col-sm-2 control-label">设备型号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="type"
                                   id="add-type">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-leave-no" class="col-sm-2 control-label">出厂编号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="leaveFactoryNo"
                                   id="add-leave-no">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-leave-date" class="col-sm-2 control-label">出厂日期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="leaveFactoryDate"
                                   id="add-leave-date">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-install-date" class="col-sm-2 control-label">安装日期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="installDate"
                                   id="add-install-date">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-install-position" class="col-sm-2 control-label">安装位置</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="position"
                                   id="add-install-position">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-available-year" class="col-sm-2 control-label">使用年限(年)</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="availableYear"
                                   id="add-available-year">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-etc" class="col-sm-2 control-label">备注</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="etc" id="add-etc">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-start-date" class="col-sm-2 control-label">启用日期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="startDate"
                                   id="add-start-date">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-rated-voltage" class="col-sm-2 control-label">额定电压(V)</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ratedVoltage"
                                   id="add-rated-voltage">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-rated-frequency" class="col-sm-2 control-label">额定频率(HZ)</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ratedFrequency"
                                   id="add-rated-frequency">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-rated-current" class="col-sm-2 control-label">额定功率(W)</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ratedCurrent"
                                   id="add-rated-current">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-apply-factory" class="col-sm-2 control-label">供应商</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="applyFactory"
                                   id="add-apply-factory">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-apply-phone" class="col-sm-2 control-label">供应商联系电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="applyPhone"
                                   id="add-apply-phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-produce-contrary" class="col-sm-2 control-label">制造国家</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="add-produce-contrary"></p>
                            <input type="text" class="form-control" name="produceContrary"
                                   id="add-produce-contrary">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-easy-broken-thing" class="col-sm-2 control-label">易损件</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="easyBrokenThing"
                                   id="add-easy-broken-thing">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add-easy-broken-thing" class="col-sm-2 control-label">证书</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="certificate"
                                   id="add-certificate">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary " id="save-btn"
                        data-dismiss="modal">保存
                </button>
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
        <h1>致微后台管理系统</h1>
    </div>

    <a id="toggle"> <span class="entypo-menu"></span>
    </a>


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
            <li><span class="fontawesome-tasks"></span></li>

            <li><a href="device-information.jsp" title="Sample page 1">设备添加</a></li>


        </ul>

        <!-- END OF BREADCRUMB -->


        <div class="content-wrap">
            <div class="content-wrap">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="nest" id="tabletreeClose">
                            <div class="title-alt">
                                <h6>设备添加</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#tabletreeClose"> <span
                                            class="entypo-cancel"></span>
                                    </a>
                                </div>


                            </div>

                            <div class="body-nest" id="tabletree">

                                <div id="domId" style="width: 100%; height: 600px;"></div>

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
    var baseUrl = 'http://localhost:8080/FantasyStar2';

    $('#save-btn').click(function () {
        $.ajax({
            url: baseUrl + '/saveDevice',
            method: 'POST',
            data: $('#add-form').serialize(),
            async: false,
            success: function (result) {
            }
        })

        $('#add-modal').modal('hide');
        to_page(totalRecord);
    })
</script>

<script type="text/javascript">
    var viewToken = 'f3d0cbcdbdaf4a2fb52a6427e3a13b48';
    //	var viewToken = 'a6419c5e364f48a3b268a3b5d61e1658';
    var view = document.getElementById('domId')

    var bimfaceLoaderConfig = new BimfaceSDKLoaderConfig();
    bimfaceLoaderConfig.viewToken = viewToken;
    BimfaceSDKLoader.load(bimfaceLoaderConfig, onSDKLoadSucceeded);

    function onSDKLoadSucceeded(viewMetaData) {

        var viewer3DConfig = new Glodon.Bimface.Application.WebApplication3DConfig();
        viewer3DConfig.domElement = view;

        app = new Glodon.Bimface.Application.WebApplication3D(
            viewer3DConfig);
        app.addView(viewToken);
        viewer = app.getViewer();
        viewer.hideComponents(["1065162"]);
        // 首先创建DrawableContainer
        var drawaleContainerConfig = new Glodon.Bimface.Plugins.Drawable.DrawableContainerConfig();
        drawaleContainerConfig.viewer = viewer;
        var drawableContainer = new Glodon.Bimface.Plugins.Drawable.DrawableContainer(
            drawaleContainerConfig);

        //首先创建一个AnnotationManagerConfig
        var annotationconfig = new Glodon.Bimface.Plugins.Annotation.AnnotationManagerConfig();
        annotationconfig.viewer = viewer;
        var annotationmanager = new Glodon.Bimface.Plugins.Annotation.AnnotationManager(
            annotationconfig);
        //此处是对象，不是个方法
        var annotationtype = Glodon.Bimface.Plugins.Annotation.AnnotationTypeOption.Circle;
        console.log(annotationtype);

        var eventManager = Glodon.Bimface.Viewer.Viewer3DEvent;
        viewer.addEventListener(eventManager.ViewAdded, function () {

            viewer.render();
        });

        viewer
            .addEventListener(
                eventManager.ComponentsSelectionChanged,
                function (componentData) {
                    //console.log(componentData);

                    if (componentData && componentData.objectId) {

                        var imageConfig = new Glodon.Bimface.Plugins.Drawable.ImageConfig();
                        // 设置自己的imageUrl
                        imageConfig.src = "img/flower.png";
                        console.log(componentData);
                        console.log(componentData.worldPosition);
                        // 通过selection change可以得到构件ID和坐标
                        imageConfig.worldPosition = componentData.worldPosition;
                        var image = new Glodon.Bimface.Plugins.Drawable.Image(
                            imageConfig);
                        image
                            .onClick(function () {
                                //var wid=image.getWidth()
                                //alert(wid);
                                $
                                    .ajax({
                                        url: baseUrl
                                            + '/getAddInfos',
                                        method: 'GET',
                                        success: function (
                                            result) {
                                            var deviceNames = result.info.deviceNames;
                                            $(
                                                '#add-device-name')
                                                .empty();
                                            $
                                                .each(
                                                    deviceNames,
                                                    function (
                                                        index,
                                                        item) {
                                                        $(
                                                            '#add-device-name')
                                                            .append(
                                                                $(
                                                                    '<option></option>')
                                                                    .text(
                                                                        item)
                                                                    .val(
                                                                        item));
                                                    })
                                        }
                                    });
                                $('#add-modal').modal({
                                    backdrop: 'static'
                                })
                            });

                        // 添加image
                        drawableContainer.addItem(image);

                    }
                });
    }
</script>
</body>

</html>
