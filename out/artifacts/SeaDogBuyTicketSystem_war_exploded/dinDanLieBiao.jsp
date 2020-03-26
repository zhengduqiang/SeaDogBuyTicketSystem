<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/12/29
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <!-- IE 浏览器运行最新的渲染模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 启用响应式特性 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 双核使用webkit内核 -->
    <meta name="renderer" content="webkit">
    <title>订单列表</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/common.css" rel="stylesheet">
    <link href="css/corptravel.css" rel="stylesheet">
    <link href="css/enterprise.css" rel="stylesheet">
    <!-- IconFont图标 -->
    <link href="css/iconfont.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- 兼容IE8 -->
    <!--[if lte IE 9]>
    <script type="text/javascript" src="js/html5shiv.min.js"></script>
    <script type="text/javascript" src="js/respond.min.js"></script>
    <![endif]-->
    <!-- layer弹框 2.1 -->
    <script type="text/javascript" src="js/layer/layer.js"></script>

    <style>
        .tabs {
            width: 35px;
            padding: 3px;;
            background-color: #db514f;
            color: #fff;
            text-align: center;
            margin-top: 2px;
            margin-bottom: 2px;
            border-radius: 3px;
        }

        .startbox {
            overflow: hidden;
            margin-bottom: 5px;
        }

        .start {
            float: left;
            background-color: #f9a60a;
            padding: 2px;
            color: #fff;
            border-radius: 2px;
            margin-right: 5px;
        }

        .destination {
            float: left;
            background-color: #0096de;
            padding: 2px;
            color: #fff;
            border-radius: 2px;
            margin-right: 5px;
        }

        .startcity {
            float: left;
            font-size: 12px;
            color: #666;
        }

        .startcity span {
            font-size: 14px;
            color: #000;
            font-weight: bold;
        }

        .destination1 {
            float: left;
            background-color: #0096de;
            padding: 2px;
            color: #fff;
            border-radius: 2px;
            margin-right: 5px;
        }

        .destination2 {
            float: left;
            background-color: #0096de;
            padding: 2px;
            color: #fff;
            border-radius: 2px;
            margin-right: 5px;
        }
    </style>
</head>
<c:if test="${empty user}">
    <script type="text/javascript">
        $(function () {
            $(".login").show();
            $(".user").hide();
        });
    </script>
</c:if>

<c:if test="${user!=null}">
    <script type="text/javascript">
        $(function () {
            $(".login").hide();
            $(".user").show();
        });
    </script>
</c:if>
<body class="bg-body">
<!-- header -->
<nav class="navbar navbar-default navbar-fixed-top bg-white">
    <!-- 小导航 -->
    <nav class="navbar navbar-default" style=" min-height:30px; line-height:30px; margin-bottom:0px; border-radius:0;">
        <div class="container font12">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- <span style=" margin-left:-15px; margin-right:20px;">企业商旅管理</span>-->
            </div>
            <div class="login">
                <ul class="nav navbar-nav nav-top-small" style="margin-left:-15px;">
                    您好<a class="a" href="login.jsp"
                         aria-expanded="false">请登录<span class="caret"></span></a>&nbsp;|&nbsp;
                    <a href="addUserName.jsp">注册</a>
                </ul>
            </div>
            <div class="user" style="display: none">
                <ul class="nav navbar-nav nav-top-small" style="margin-left:-15px;"><a class="a" href="login.jsp"
                                                                                       aria-expanded="false">${sessionScope.user.username}用户,欢迎您<span
                        class="caret"></span></a>&nbsp;|&nbsp;
                    <a href="addUserName.jsp">注册</a><span class="caret"></span>&nbsp;|&nbsp;
                    <a class="break" href="exit.jsp" target="_top">退出</a>
                </ul>
            </div>
            <ul class="nav navbar-nav navbar-right nav-top-small">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"> <i class="icon iconfont font14 " style=" vertical-align:middle;">
                        &#xe62b;</i>
                        我的60321<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="personalInformation.jsp">查看个人信息</a></li>
                        <li><a href="changePassword.jsp">修改密码</a></li>
                        <li><a href="exit.jsp">退出</a></li>
                        <!--<li role="separator" class="divider"></li>-->
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right nav-top-small">
                <li><a href="https://kyfw.12306.cn/otn/gonggao/windowEndorse.html">帮助中心</a></li>

            </ul>
        </div>
    </nav>
    <!-- 小导航结束 -->

    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class=" " href="差旅报告/汇总.html"><img src="img/logo2.png" width="210" height="70" alt="系统LOGO"
                                                  class="pull-left mar-right-30" style="margin-left:-15px;"></a>
            <!--<h4 class="navbar-brand font24" >成都万里行科技发展有限公司</h4>-->
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="chaXunLieBiao.jsp"><i class="icon iconfont icon-nav-block font24">&#xe620;</i> 在线预订</a>
                </li>
                <li class="active"><a href="dinDanLieBiao.jsp"><i class="icon iconfont icon-nav-block font24">
                    &#xe61c;</i> 订单管理</a></li>

            </ul>
        </div><!-- /.navbar-collapse -->

    </div>
</nav>
<!-- header end -->
<!-- 管理模板 -->
<div class="container bg-gray-eee box-shadow mar-bottom-30"
     style="padding-right:0px; padding-left:0px; position:relative; margin-top:120px;">

    <!-- main -->
    <div class="rightCon" style="">
        <!-- 引导 -->
        <ol class="breadcrumb">
            <li><a href="chaXunLieBiao.jsp">首页</a></li>
            <li><a href="dinDanLieBiao.jsp">订单管理</a></li>
            <li class="active"><a href="dinDanLieBiao.jsp">订单列表</a></li>
        </ol>
        <!-- 引导结束 -->
        <form method="post" action="${pageContext.request.contextPath}/irdersUnfiServlet?info=chaXunChePiaoXinXi">
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label class="w90 text-right">车次号</label>
                        <input type="text" class="form-control input-sm" style=" width:200px; display:inline-block;"
                               name="cch"
                               placeholder="number">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4" style="margin-left: 300px;margin-top: -50px">
                    <div class="form-group">
                        <label for="apdiv2" class="w90 text-right">发车日期</label>
                        <input type="date" class="form-control input-sm" style=" width:190px; display:inline-block;"
                               name="fcrq"
                               id="input" placeholder="日期">
                    </div>
                </div>
            </div>
            <input type="hidden" name="name" value="${sessionScope.user.name}"/>
            <!--<div class="form-group">
                  <label class="sr-only" for="apdiv">联系人</label>
                  <input type="text" class="form-control" style=" width:100px;" id="" placeholder="联系人姓名">
                </div>
                <div class="form-group">
                  <label class="sr-only" for="apdiv">联系电话</label>
                  <input type="text" class="form-control" style=" width:120px;" id="" placeholder="联系电话">
                </div>-->
            <div class="text-center mar-top-10 bor-top-solid-1 pad-top-10 mar-bottom-10">
                <button type="submit" class="btn btn-danger btn-sm mar-right-20">查询</button>
                <button type="reset" class="btn btn-default btn-sm mar-right-20">清空条件</button>
            </div>
        </form>
        <table border="0" cellspacing="0" cellpadding="0"
               class="table table-hover table-striped font12 table-bordered v-align-top">
            <tr>
                <th>发车日期</th>
                <th>乘车人</th>
                <th>车次号\订单号</th>
                <th>座位</th>
                <th>出发城市</th>
                <th>到达城市</th>
                <th>结算总价</th>
                <th style="width:65px;">订单状态</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${info}" var="info2">
                <tr>
                    <td>${info2.departDate} <br>
                    </td>
                    <td><p>${info2.name}</p>
                        <p>${info2.ticketSeed}</p></td>
                    <td>${info2.trainNo}<br>${info2.orderId}</td>
                    <td>${info2.seat}</td>
                    <td>
                        <div class="startbox">

                            <div class="startcity"><span>${info2.leaveCity}</span><br/>
                                    ${info2.departDate}&nbsp;&nbsp;
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="startbox">

                            <div class="startcity"><span>${info2.destinationCity}</span> <br/>
                                &nbsp;&nbsp;${info2.arriveTime}
                            </div>
                        </div>
                    </td>
                    <td>${info2.ticketPriceMoney}</td>
                    <td>已出票</td>
                    <td><a  href="${pageContext.request.contextPath}/irdersUnfiServlet?info=tuiPiao&id=${info2.orderId}&name=${sessionScope.user.name}&zw=${info2.seat}&cc=${info2.trainNo}">
                        <c:if test="${'2018-02-26'!=info2.departDate}">
                            退票
                        </c:if>
                    </a><br>
                        <!--<a href="#" class="tuipiao">【申请退票】</a><br>
                        <a href="#" class="qiye09">【申请改签】</a></td>-->
                </tr>
            </c:forEach>
        </table>
        <div class="clearfix"></div>
    </div>
</div>
<!-- main end -->
</div>
<!-- 管理模板 结束 -->
<script>
    $(document).ready(function () {

        $("#quxiao").click(function () {  //取消订单
            layer.confirm('您确定要退票吗？', {
                title: '取消订单',
                btn: ['确定', '取消'] //按钮
            }, function () {
                layer.msg('该订单已取消', {icon: 1});
            });
        });

        $(".tuipiao").click(function () {  //申请退票
            layer.open({
                type: 1,
                title: '申请退票',
                area: ['auto', 'auto'],
                fix: false, //不固定
                maxmin: false,
                content: $('#rev'),
            });
        });

        $(".qiye09").click(function () {  //申请改签
            layer.open({
                type: 1,
                shift: 2,  //出场动画
                area: ['500px', 'auto'],
                title: '申请改签',
                shadeClose: true, //开启遮罩关闭
                content: $('#gaiqian'),
            });
        });

    });
</script>
</body>
</html>
