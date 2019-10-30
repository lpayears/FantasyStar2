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
    <script src="https://static.bimface.com/api/BimfaceSDKLoader/BimfaceSDKLoader@latest-release.js"
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
<div class="modal fade" id="view-modal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width:70%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">模型查看</h4>
            </div>
            <div class="modal-body">

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
                <h4 class="modal-title">模型导入</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="add-form"
                      enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="add-model" class="col-sm-2 control-label">上传模型</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" name="file"
                                   id="add-model">
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
                <h4 class="modal-title">模型信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit-form">
                    <div class="form-group">
                        <label for="edit-name" class="col-sm-2 control-label">模型名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="name"
                                   id="edit-name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-create-time" class="col-sm-2 control-label">创建时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="edit-create-time"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit-size" class="col-sm-2 control-label">模型大小</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="edit-size"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="fileId" class="col-sm-2 control-label">fileId</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="fileId"></p>
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

            <li><a href="model-management.jsp" title="Sample page 1">模型管理</a></li>


        </ul>

        <!-- END OF BREADCRUMB -->


        <div class="content-wrap">
            <div class="content-wrap">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="nest" id="tabletreeClose">
                            <div class="title-alt">
                                <h6>模型查看</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#tabletreeClose"> <span
                                            class="entypo-cancel"></span>
                                    </a>
                                </div>


                            </div>

                            <div class="body-nest" id="tabletree">

                                <div id="domId" style="width:100%; height:600px;"></div>

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

    // 指定待显示的模型或图纸（viewToken从服务端获取）
    var viewToken = '23c88893075e4130b37dc89b35650d4d';
    // var viewToken2 = '7b3202930b974b54ab9627e0c6f90578';

    // 初始化显示组件
    var options = new BimfaceSDKLoaderConfig();
    options.viewToken = viewToken;
    BimfaceSDKLoader.load(options, successCallback, failureCallback);

    function successCallback(viewMetaData) {

        if (viewMetaData.viewType == "dwgView") {

            // ======== 判断是否为2D图纸 ========

            // 获取DOM元素
            var dom4Show = document.getElementById('domId');
            var webAppConfig = new Glodon.Bimface.Application.WebApplication2DConfig();
            webAppConfig.domElement = dom4Show;

            // 创建WebApplication
            var app = new Glodon.Bimface.Application.WebApplication2D(webAppConfig);

            // 添加待显示的图纸
            app.load(viewToken);

            // 从WebApplication获取viewer2D对象
            var viewer2D = app.getViewer();

            // 调用viewer2D对象的Method，可以继续扩展功能
            // your code

        } else if (viewMetaData.viewType == "3DView") {

            // ======== 判断是否为3D模型 ========

            // 获取DOM元素
            var dom4Show = document.getElementById('domId');
            var webAppConfig = new Glodon.Bimface.Application.WebApplication3DConfig();
            webAppConfig.domElement = dom4Show;

            var appEvents = Glodon.Bimface.Application.WebApplication3DEvent;

            // 创建WebApplication
            var app = new Glodon.Bimface.Application.WebApplication3D(webAppConfig);

            // 添加待显示的模型
            app.addView(viewToken);

            // 监听添加view完成的事件
            app.addEventListener(Glodon.Bimface.Application.WebApplication3DEvent.ViewAdded, function () {

                // 渲染3D模型
                // app.render();
                viewer = app.getViewer();
                var toolbar = app.getToolbar('MainToolbar');
                var btnConfig = new Glodon.Bimface.UI.Button.ButtonConfig();
                btnConfig.title = "隐藏";
                var btn = new Glodon.Bimface.UI.Button.Button(btnConfig);
                btn.setHtml(`<button style="width: 50px; height:50px; left: -8px; top: -8px; position: relative; color: white; font-size: 18px;background: rgba(0, 0, 0, 0);opacity: 0.6;border: none;"><a href="xuncha.html" style="text-decoration: none;color: #fff;">巡查</a></button>`);
                btn.addClassName('btn-test');
                //         btn.addEventListener('Click', function() {
                //         viewer.showExclusiveComponentsByObjectData([{"categoryId":-2000032}]);

                viewer.render();
                toolbar.insertControl(9, btn);


            });


            // 监听添加view进行中的时间，可获取添加进度
            app.addEventListener(Glodon.Bimface.Application.WebApplication3DEvent.ViewLoading, function (progress) {
                console.log(progress);
            });
        }
        app.addEventListener(Glodon.Bimface.Viewer.Viewer3DEvent.ComponentsSelectionChanged, function (componentData) {
            if (componentData && componentData.objectId) {

                // 首先创建DrawableContainer
                var drawaleContainerConfig = new Glodon.Bimface.Plugins.Drawable.DrawableContainerConfig();
                drawaleContainerConfig.app = app;
                var drawableContainer = new Glodon.Bimface.Plugins.Drawable.DrawableContainer(drawaleContainerConfig);
                var imageConfig = new Glodon.Bimface.Plugins.Drawable.ImageConfig();

                // 设置自己的imageUrl
                imageConfig.src = "flower.png";
                // 通过selection change可以得到构件ID和坐标
                imageConfig.worldPosition = componentData.worldPosition;
                var image = new Glodon.Bimface.Plugins.Drawable.Image(imageConfig);

                //图片的点击事件
                image.onClick(function () {
                    var id = image.id;
                    alert(id);
                });

                //添加image
                drawableContainer.addItem(image);
            }
        });
    }

    function failureCallback(error) {
        console.log(error);
    };

</script>
</body>

</html>
