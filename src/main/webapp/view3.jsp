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

            <li><a href="alarm-prompt.jsp" title="Sample page 1">报警提示</a></li>


        </ul>

        <!-- END OF BREADCRUMB -->


        <div class="content-wrap">
            <div class="content-wrap">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="nest" id="tabletreeClose">
                            <div class="title-alt">
                                <h6>位置查看</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#tabletreeClose"> <span
                                            class="entypo-cancel"></span>
                                    </a>
                                </div>


                            </div>

                            <div class="body-nest" id="tabletree">

                                <!-- 									<div id="domId" style="width:100%; height:600px;position:relative;"></div> -->
                                <div id="domId" style="width:50%; height:660px;float: left;"></div>
                                <div id="domId2" style="width:50%; height:660px;float: left;"></div>
                                <div class="container">

                                    <div>
                                        <table class="table table-striped table-bordered" style="margin-top: 695px;">
                                            <thead>
                                            <tr>
                                                <th> 设备名</th>
                                                <th> 设备编号</th>
                                                <th> 设备型号</th>
                                                <th> 供应商</th>
                                                <th> 出厂编号</th>
                                                <th> 出厂日期</th>
                                                <th> 安装日期</th>
                                                <th> 安装位置</th>
                                                <th> 使用年限</th>
                                                <th> 详情</th>
                                            </tr>
                                            </thead>
                                            <tbody id="table1">
                                            <tr>
                                                <td> 摄像头</td>
                                                <td> 01-03-021-123</td>
                                                <td> DS-2CD3232(D)-I5</td>
                                                <td>海康威视</td>
                                                <td>104760003001911</td>
                                                <td>2017-11-02</td>
                                                <td>2017-12-01</td>
                                                <td>4栋3层右侧</td>
                                                <td>5年</td>
                                                <td class="td-actions se">
                                                    <!-- <a href="javascript:;" class="btn btn-small btn-info"><i class="btn-icon-only icon-align-justify"> </i></a> -->
                                                    <!-- Button trigger modal -->
                                                    <button type="button" class="btn btn-info btn-small"
                                                            data-toggle="modal" data-target="#myModal"
                                                            style="width: 60%;">
                                                        <i class="btn-icon-only icon-align-justify"> </i>
                                                    </button>

                                                    <!-- Modal -->

                                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                                         aria-labelledby="myModalLabel">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header"
                                                                     style="    height: 25px;background: #fdfcfc;">
                                                                    <button type="button" class="close"
                                                                            data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span></button>
                                                                    <h4 class="modal-title" id="myModalLabel">设备详情</h4>
                                                                </div>
                                                                <div class="modal-body"
                                                                     style="height:800px; overflow:auto;">
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>设备名称</b></p>
                                                                        <p class="zuo">摄像头</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>设备编号</b></p>
                                                                        <p class="zuo">1</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>设备型号</b></p>
                                                                        <p class="zuo">DS-2CD3232(D)-I5</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>出厂编号</b></p>
                                                                        <p class="zuo">6543</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>出厂日期</b></p>
                                                                        <p class="zuo">2017-11-2</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>安装日期</b></p>
                                                                        <p class="zuo">2017-12-1</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>安装位置</b></p>
                                                                        <p class="zuo">1,1</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>使用年限</b></p>
                                                                        <p class="zuo">5年</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>备注</b></p>
                                                                        <p class="zuo">无</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>启用日期</b></p>
                                                                        <p class="zuo">2017-12-2</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>额定电压</b></p>
                                                                        <p class="zuo">5V</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>额定频率</b></p>
                                                                        <p class="zuo">50HZ</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>额定功率</b></p>
                                                                        <p class="zuo">7W</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>供应商</b></p>
                                                                        <p class="zuo">海康威视</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>供应商联系电话</b>
                                                                        <p class="zuo">400-700-5998</p>
                                                                    </div>
                                                                    <br></p><br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>制造国家</b></p>
                                                                        <p class="zuo">中国</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>易损件</b></p>
                                                                        <p class="zuo">无</p>
                                                                    </div>
                                                                    <br>
                                                                    <div class="zuoo">
                                                                        <p class="zuoz"><b>维修记录</b></p><br>
                                                                        <table class="table table-striped table-bordered">
                                                                            <thead>
                                                                            <tr>
                                                                                <th> #</th>
                                                                                <th> 设备名称</th>
                                                                                <th> 创建人</th>
                                                                                <th> 创建时间</th>
                                                                                <th> 维护时间</th>
                                                                                <th> 问题描述</th>

                                                                            </tr>
                                                                            </thead>
                                                                            <tbody id="table1">
                                                                            <tr>
                                                                                <td>1</td>
                                                                                <td> 摄像头</td>
                                                                                <td> test1</td>
                                                                                <td> 2018-1-10 10:10:10</td>
                                                                                <td> 2018-1-11 11:00:20</td>
                                                                                <td>不能正常工作</td>
                                                                            </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <embed src="img/111.mp4" width="250"
                                                                               height="200">
                                                                        <embed src="img/111.mp4" width="250"
                                                                               height="200">

                                                                        <!-- <video width="320" height="240" controls>
                                                                          <source src="movie.mp4" type="video/mp4">
                                                                            <embed src="img/111.mp4" width="320" height="240">
                                                                          </object>
                                                                        </video> -->
                                                                    </div>
                                                                </div>
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
                    var viewToken2 = '3fb8d18f4cb3411e832342a253cc5ecf';

                    // 初始化显示组件
                    var options = new BimfaceSDKLoaderConfig();
                    options.viewToken = viewToken;
                    BimfaceSDKLoader.load(options, successCallback, failureCallback);

                    var options2 = new BimfaceSDKLoaderConfig();
                    options2.viewToken = viewToken2;
                    BimfaceSDKLoader.load(options2, successCallback, failureCallback);

                    function successCallback(viewMetaData) {

                        if (viewMetaData.viewType == "dwgView") {

                            // ======== 判断是否为2D图纸 ========
                            // 获取DOM元素
                            var dom4Show2 = document.getElementById('domId2');

                            // 配置参数
                            var config2 = new Glodon.Bimface.Viewer.Viewer2DConfig();
                            config2.domElement = dom4Show2;

                            // 创建viewer2D对象
                            var viewer2D = new Glodon.Bimface.Viewer.Viewer2D(config2);

                            // 添加模型
                            viewer2D.addView(viewToken2);

                            // 监听添加view完成的事件
                            viewer2D.addEventListener(Glodon.Bimface.Viewer.Viewer2DEvent.ViewAdded, function () {

                                // 渲染2D模型
                                viewer2D.render();

                                // 调用viewer2D对象的Method，可以继续扩展功能

                            });

                            var image;
                            var imageConfig;
                            var imagearry = {}; //创建覆盖物容器
                            // 首先创建DrawableContainer
                            var drawaleContainerConfig;
                            var drawableContainer;
                            var viewer2D;
                            //定义位置坐标
                            var position0 = new Object();
                            position0 = {"x": 5728, "y": 10500, "z": 0};
                            var positions = [];
                            positions.push(position0);
                            console.log(positions);
                            drawaleContainerConfig = new Glodon.Bimface.Plugins.Drawable.DrawableContainerConfig();
                            drawaleContainerConfig.viewer = viewer2D;
                            drawableContainer = new Glodon.Bimface.Plugins.Drawable.DrawableContainer(drawaleContainerConfig);
                            for (i = 0; i < positions.length; i++) {
                                imageConfig = new Glodon.Bimface.Plugins.Drawable.ImageConfig();
                                //设置image的路径
                                imageConfig.src = "img/biaoqian.png";
                                // positions[i].x=positions[i].x+100;
                                imageConfig.worldPosition = positions[i];
                                image = new Glodon.Bimface.Plugins.Drawable.Image(imageConfig);
                                //设置image的id
                                image.id = "image" + i;


                                // 添加image
                                drawableContainer.addItem(image);
                            }
                            viewer2D.addEventListener(Glodon.Bimface.Viewer.Viewer2DEvent.MouseClicked, function (Position) {
                                console.log(Position);
                            });

                        } else if (viewMetaData.viewType == "3DView") {

                            // ======== 判断是否为3D图纸 ========

                            // 获取DOM元素
                            var dom4Show = document.getElementById('domId');

                            // 配置参数
                            var config = new Glodon.Bimface.Viewer.Viewer3DConfig();
                            config.domElement = dom4Show;

                            // 创建viewer3D对象
                            var viewer = new Glodon.Bimface.Viewer.Viewer3D(config);

                            // 添加模型
                            viewer.addView(viewToken);

                            // viewerviewerviewer监听添加view完成的事件
                            viewer.addEventListener(Glodon.Bimface.Viewer.Viewer3DEvent.ViewAdded, function () {

                                // 渲染3D模型
                                viewer.render();
                                viewer.isolateComponentsByObjectData([{
                                    "levelName": "Level 4"
                                }], Glodon.Bimface.Viewer.IsolateOption.HideOthers);
                                viewer.render();
                                // 调用viewer3D对象的Method，可以继续扩展功能

                            });
                            // 监听添加view进行中的时间，可获取添加进度
                            viewer.addEventListener(Glodon.Bimface.Application.WebApplication3DEvent.ViewLoading, function (progress) {
                                console.log(progress);
                            });
                            viewer.hideComponents(["1065162"]);

                            // 首先创建DrawableContainer
                            var drawaleContainerConfig = new Glodon.Bimface.Plugins.Drawable.DrawableContainerConfig();
                            drawaleContainerConfig.viewer = viewer;
                            var drawableContainer = new Glodon.Bimface.Plugins.Drawable.DrawableContainer(drawaleContainerConfig);

                            //首先创建一个AnnotationManagerConfig
                            var annotationconfig = new Glodon.Bimface.Plugins.Annotation.AnnotationManagerConfig();
                            annotationconfig.viewer = viewer;
                            var annotationmanager = new Glodon.Bimface.Plugins.Annotation.AnnotationManager(annotationconfig);
                            //此处是对象，不是个方法
                            var annotationtype = Glodon.Bimface.Plugins.Annotation.AnnotationTypeOption.Circle;
                            console.log(annotationtype);


                            var eventManager = Glodon.Bimface.Viewer.Viewer3DEvent;
                            viewer.addEventListener(eventManager.ViewAdded, function () {

                                viewer.render();

                            });

                            // viewer.addEventListener(eventManager.ComponentsSelectionChanged,function(componentData) {
                            //  //console.log(componentData);

                            // if(componentData && componentData.objectId){

                            var imageConfig = new Glodon.Bimface.Plugins.Drawable.ImageConfig();
                            // 设置自己的imageUrl
                            imageConfig.src = "img/biaoqian.png";
                            // console.log(componentData);
                            // console.log(componentData.worldPosition);
                            // console.log(componentData.levelName);
                            // console.log(componentData.categoryId);
                            // 通过selection change可以得到构件ID和坐标
                            // imageConfig.worldPosition = componentData.worldPosition;
                            var image = new Glodon.Bimface.Plugins.Drawable.Image(imageConfig);
                            imageConfig.worldPosition.x = -2031.6627383158836;
                            imageConfig.worldPosition.y = 2869.7073042006887;
                            imageConfig.worldPosition.z = 13500.330270449967;
                            // image.onClick(function() {
                            //  var wid=image.getWidth()
                            //  alert(wid);
                            // });

                            // 添加image
                            drawableContainer.addItem(image);
                        }
                    }

                    function failureCallback(error) {
                        console.log(error);
                    };
                </script>
</body>

</html>
