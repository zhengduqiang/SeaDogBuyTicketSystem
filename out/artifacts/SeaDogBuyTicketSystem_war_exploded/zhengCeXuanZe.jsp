<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/12/29
  Time: 16:27
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
    <title>中国铁路60321</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/common.css" rel="stylesheet">
    <link href="css/corptravel.css" rel="stylesheet">
    <link href="css/enterprise.css" rel="stylesheet">
    <!--<link href="../../../js/icheck/skins/all.css" rel="stylesheet" type="text/css">-->
    <!-- IconFont图标 -->
    <link href="css/iconfont.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- 兼容IE8 -->
    <!--[if lte IE 9]>
    <script type="text/javascript" src="js/html5shiv.min.js"></script>
    <script type="text/javascript" src="js/respond.min.js"></script>
    <![endif]-->
    <!-- layer弹框 2.1 -->
    <script type="text/javascript" src="js/layer/layer.js"></script>
    <!-- 日历控件 -->
    <script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
</head>
<c:if test="${empty user}">
    <script type="text/javascript">
        $(function () {
            $(".login").show();
            $(".user").hide();
        });
    </script>
</c:if>
<script type="text/javascript">

</script>
<c:if test="${user!=null}">
    <script type="text/javascript">
        $(function () {
            $(".login").hide();
            $(".user").show();
        });
    </script>
</c:if>
<script type="text/javascript">
    $(function () {
        $("#dd").click(function () {
            var name = $("#name").val();
            var zw = $("#zw").val();
            var pz = $("#pz").val();
            if (name == null || name == "") {
                alert("请输入姓名");
                return false;
            } else if (zw == "请选择座位类型") {
                alert("请选择座位类型");
                return false;
            } else {
                return true;
            }
        })
    })
</script>
<body>
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
                    您好 <a class="a" href="login.jsp"
                          aria-expanded="false">请登录<span class="caret"></span></a>&nbsp;|&nbsp;
                    <a href="addUserName.jsp">注册</a>
                </ul>
            </div>
            <div class="user" style="display: none">
                <ul class="nav navbar-nav nav-top-small" style="margin-left:-15px;"><a class="a"
                                                                                       href="personalInformation"
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
<form action="${pageContext.request.contextPath}/orderServlet?info=dp" method="post">
    <!-- 管理模板 -->
    <div class="container bg-gray-eee box-shadow mar-bottom-30"
         style="padding-right:0px; padding-left:0px; position:relative; margin-top:120px;">

        <div class="col-sm-7 container bg-white  pad-bottom-20">
            <!-- 航班信息 -->
            <div style="overflow:hidden;">
                <h3 class="mar-bottom-20" style=" display:block; float:left;">乘车人</h3>
                <%--<a href="" style=" display:block;float:left; margin-left:310px; line-height:70px; ">历史乘机人</a>--%>
            </div>
            <div>
                <input type="hidden" name="trainno" value="${Info.trainNo}">
                <input type="hidden" name="sta" value="1">
                <input id="name" name="name" type="text" class="form-control input-sm w300"
                       style=" display: inline-block;" placeholder="姓名">
                <select name="pz" class="form-control input-sm w150" style=" display: inline-block;">
                    <option value="成人" selected="selected">成人</option>
                    <option value="儿童">儿童（2-12岁）</option>
                    <option value="婴儿">婴儿（14天-2岁）</option>
                </select>
            </div>
            <div class="mar-top-10">
                <select id="zw" name="zw" class="form-control input-sm w150" style=" display: inline-block;">
                    <option selected="selected" value="请选择座位类型">请选择座位类型</option>
                    <option value="商务座">商务座</option>
                    <option value="一等座">一等座</option>
                    <option value="二等座">二等座</option>
                    <option value="硬座">硬座</option>
                    <option value="软卧">软卧</option>
                    <option value="软座">软座</option>
                    <option value="无座">无座</option>
                </select>
                <input readonly value="${Info.departDate}" name="OrdersDate" id="OrdersDate" type="text"
                       class="form-control input-sm w300" style=" display: inline-block;" placeholder="订单日期">
            </div>

            <%--<div class=" mar-top-10">--%>
            <%--<input type="button" value="添加乘机人" class="btn btn-danger zw2" >--%>
            <%--</div>--%>

            <!-- 航班信息 结束 -->

            <!-- 保险 -->
            <div style="position:relative;">
                <h3 class="mar-bottom-20">订票信息</h3>
                <a href="javaScript:void(0)" class="mar-right-10 safe">发车日期</a>
                <input value="${Info.departDate}" type="text" name="departDate" id="departDate" readonly>
                <br/> <br/>
                <a href="javaScript:void(0)" class="mar-right-10 safe">&nbsp;&nbsp;&nbsp;出发地</a>
                <input readonly
                       value="<c:if test="${Info.leaveCity==1}">上海</c:if><c:if test="${Info.leaveCity==2}">抚州</c:if>"
                       type="text" name="LeaveCity" id="LeaveCity">
                <br/> <br/>
                <a href="javaScript:void(0)" class="mar-right-10 safe">&nbsp;&nbsp;&nbsp;目的地</a>
                <input readonly
                       value="<c:if test="${Info.destinationCity==1}">上海</c:if><c:if test="${Info.destinationCity==2}">抚州</c:if>"
                       type="text" name="DestinationCity" id="DestinationCity">
                <%--<!--航意险说明-->--%>
                <div style="width:460px; border:1px solid #C4C4C4; padding:5px; position:absolute; left:0px; top:75px; background-color:#eee;"
                     class="explain">
                    <h5>航意险说明</h5>
                    <p>1.保险费：<i class="rmb">¥</i>30/份。保险金额及保险责任：<i class="rmb">¥</i>260万/份。航空意外险由太平财产保险有限公司深圳分公司承保。</p>
                    <p>2.保险购买即生效，不可单独退保。机票退款后，自动退保。机票改签后，保险责任保护到改签后航班。提供保险定额发票作为报销凭证。</p>
                </div>
            </div>

            <!-- 联系人 -->
            <h3 class="mar-bottom-20">日期</h3>
            <a href="javaScript:void(0)" class="mar-right-10 safe">离开时间</a>
            <input value="${Info.leaveTime}" type="text" name="departTime" id="departTime" readonly>
            <a href="javaScript:void(0)" class="mar-right-10 safe">到达时间</a>
            <input value="${Info.arriveTime}" type="text" name="arriveTime" id="arriveTime" readonly>
        </div>
        <div class="col-sm-5 bg-gray-eee">
            <div style=" margin-left:-15px;">
                <h4 style="overflow:hidden; margin-left:10px;">
                    <span style="display:block; float:left;">&nbsp;发车日期:&nbsp;&nbsp;${Info.departDate}</span>
                    <span style="display:block; float:left; margin-left:80px;">欢迎您乘坐</span>
                    <span style=" display:block; float:right;color:#999; font-size:14px; margin-right:5px;">${Info.trainNo}车次</span>
                </h4>
            </div>
            <div style=" overflow:hidden; margin-bottom:20px;">
                <div class="flight-from" style="float:left;">
                    <span class="time text-center">离开时间:${Info.leaveTime}</span><br/>
                    <span class="text-center"><c:if test="${Info.leaveCity==1}">上海</c:if><c:if
                            test="${Info.leaveCity==2}">抚州</c:if></span>
                </div>
                <div class="flight-info" style="float:left; margin-left:100px;">
                    <img src="img/a.png">
                    <span class="font12 gray-999">2h35m</span>
                    <img src="img/b.png"><br/>
                    <span class="text-center font12 gray-999 mar-left-10"></span><br/>
                    <img src="img/c.png" class="mar-left-10">
                    <span class="airline-direct"></span>
                    <span class="arrow"></span>
                </div>
                <div class="flight-to" style="float:right;">
                    <span class="time text-center">到达时间${Info.arriveTime}</span><br/>
                    <span class="text-center"><c:if test="${Info.destinationCity==1}">上海</c:if><c:if
                            test="${Info.destinationCity==2}">抚州</c:if></span>
                </div>
            </div>
            <div>
                <div class="instruction">
                    <table class="table table-bordered" style="height:150px;">
                        <tr>
                            <td>成人票</td>
                            <td>退票扣费</td>
                            <td>改期加收手续费</td>
                            <td>签转</td>
                        </tr>
                        <tr>
                            <td>起飞前24小时之前</td>
                            <td>￥169/人</td>
                            <td>￥368/人</td>
                            <td>可以签转</td>
                        </tr>
                        <tr>
                            <td>起飞前24小时之后</td>
                            <td>￥338/人</td>
                            <td>￥368/人</td>
                            <td>可以签转</td>
                        </tr>
                    </table>
                </div>
            </div>

            <%--<div style=" margin-left:-15px; overflow:hidden;">--%>
            <%--<h4 class="mar-left-10" style="display:block; float:left;">订单总额</h4>--%>
            <%--<h4 class="red" style=" display:block; float:right; font-weight:bold;">￥1079</h4>--%>
            <%--</div>--%>
            <table class="table">
                <tr>
                    <td>商务座</td>
                    <td>￥56/人</td>
                    <td>x1</td>
                </tr>
                <tr>
                    <td>一等座</td>
                    <td>￥156/成人</td>
                    <td>x1</td>
                </tr>
                <tr>
                    <td>二等座</td>
                    <td>￥100/人</td>
                    <td>x1</td>
                </tr>
                <tr>
                    <td>硬座</td>
                    <td>￥45/人</td>
                    <td>x1</td>
                </tr>
                <tr>
                    <td>软卧</td>
                    <td>￥256/人</td>
                    <td>x1</td>
                </tr>
                <tr>
                    <td>软座</td>
                    <td>￥200/人</td>
                    <td>x1</td>
                </tr>
                <tr>
                    <td>无座</td>
                    <td>￥45/人</td>
                    <td>x1</td>
                </tr>
            </table>
            <div class="order-discount">
            </div>
        </div>
    </div>
    <div class="text-center mar-top-10">
        <input type="checkbox" name="choice">&nbsp;我已阅读并接受免责条款、费用扣除、退保等在内的重要事项，其中包括 <a href="">《网络电子客票协议》</a> <a
            href="">《航意险说明》</a> <a href="">《延误险说明》</a> <a href="">《保险经纪委托协议》</a><br/>
        <input id="dd" type="submit" value="提交订单" class="btn btn-danger mar-top-20">
    </div>
</form>
<!-- 添加乘机人弹框 -->
<div id="rev" style="display:none">
    <div class="modal-body">
        <div>
            <input name="input" type="text" class="form-control input-sm w200" style=" display: inline-block;"
                   placeholder="姓名">
            <select name="select" class="form-control input-sm w150" style=" display: inline-block;">
                <option value="成人" selected="selected">成人</option>
                <option value="儿童">儿童（2-12岁）</option>
                <option value="婴儿">婴儿（14天-2岁）</option>
            </select>
        </div>
        <div class="mar-top-10">
            <select name="select" class="form-control input-sm w150" style=" display: inline-block;">
                <option value="身份证" selected="selected">身份证</option>
            </select>
            <input name="input" type="text" class="form-control input-sm w200" style=" display: inline-block;"
                   placeholder="证件号码">
        </div>
    </div>
    <div class="modal-footer mar-top-5">
        <button type="button" class="btn btn-primary" onClick="">确认添加</button>
        <button type="button" class="btn btn-default" onClick="">取消</button>
    </div>
</div>


<script type="text/javascript">

    $(function () {
        $('.bubbleinfo').each(function () {
            var distance = 10;
            var time = 10;
            var hideDelay = 100;

            var hideDelayTimer = null;

            var beingShown = false;
            var shown = false;
            var trigger = $('.trigger', this);
            var info = $('.popup', this).css('opacity', 0);


            $([trigger.get(0), info.get(0)]).mouseover(function () {
                if (hideDelayTimer) clearTimeout(hideDelayTimer);
                if (beingShown || shown) {
                    // don't trigger the animation again
                    return;
                } else {
                    // reset position of info box
                    beingShown = true;

                    info.css({
                        top: 30,
                        left: 0,
                        display: 'block'
                    }).animate({
                        top: '-=' + distance + 'px',
                        opacity: 1
                    }, time, 'swing', function () {
                        beingShown = false;
                        shown = true;
                    });
                }

                return false;
            }).mouseout(function () {
                if (hideDelayTimer) clearTimeout(hideDelayTimer);
                hideDelayTimer = setTimeout(function () {
                    hideDelayTimer = null;
                    info.animate({
                        top: '-=' + distance + 'px',
                        opacity: 0
                    }, time, 'swing', function () {
                        shown = false;
                        info.css('display', 'none');
                    });

                }, hideDelay);

                return false;
            });
        });
    });


</script>


<script>
    $(document).ready(function () {


        $('.zw2').on('click', function () {  //添加乘机人弹框
            layer.open({
                type: 1,
                title: '添加乘机人',
                area: ['400px', 'auto'],
                fix: false, //不固定
                maxmin: false,
                content: $('#rev'),
            });
        });

    });
</script>

<script>
    $('.explain').hide();
    $('.safe').mouseenter(
            function () {
                $('.explain').show();
            }
    ).mouseleave(
            function () {
                $('.explain').hide();
            }
    )

    $('.instruction').hide();
    $('.tuigaiqian').click(
            function () {
                $('.instruction').toggle();
            }
    )
</script>


</body>
</html>

