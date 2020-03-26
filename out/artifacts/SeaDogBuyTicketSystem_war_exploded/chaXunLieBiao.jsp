<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 12789
  Date: 2019/1/11
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中国铁路60321</title>
    <meta charset="utf-8">
    <!-- IE 浏览器运行最新的渲染模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 启用响应式特性 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 双核使用webkit内核 -->
    <meta name="renderer" content="webkit">
    <title>商旅系统</title>
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
    <script type="text/jxavascript" src="js/layer/layer.js"></script>
    <!-- 日历控件 -->
    <script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>

    <style type="text/css" rel="stylesheet">
        .back {
            background-color: #00A4F2;
        }
        *{

        }
        .div1 a {
            color: white;
            font-size: 20px;
            text-decoration: none;
        }

        .div2 {
            width: 1200px;
            height: 70px;
            margin: auto;
            border-color: #ffffff;
            padding: 8px;
        }

        .div3 {
            padding: 0px;
            border: solid;
            width: 1200px;
            height: 75px;
            margin: auto;
            border-color: #3DA0DB;
        }

        .div4 {
            padding: 1px;
            border: solid;
            width: 1200px;
            height: 60px;
            margin: auto;
            border-color: #3DA0DB;
        }

        .div4 th {
            color: wheat;
        }

        .btn {
            padding: 3px;
            font-size: 2px;
            height: 25px;
            width: 40px;
            background-color: #00A4F2;
        }
        tr th{
            text-align:center;
        }
    </style>
</head>
<c:if test="${empty user}">
    <script type="text/javascript">
        $(function(){
            $(".login").show();
            $(".user").hide();
        });
    </script>
</c:if>
<script type="text/javascript">

</script>
<c:if test="${user!=null}">
    <script type="text/javascript">
                $(function(){
                    $(".login").hide();
                    $(".user").show();
                });
    </script>
</c:if>
<script type="text/javascript">
    $(function(){
       $(".cx").click(function(){
           if($("#cfr").val()==null || $("#cfr").val()==""){
               alert("请填写您的日期");
               return false;
           }
       })
    })
</script>
<body>
<!-- header -->
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
            您好 <a  class="a" href="login.jsp"
                  aria-expanded="false">请登录<span class="caret"></span></a>&nbsp;|&nbsp;
            <a  href="addUserName.jsp">注册</a>
        </ul>
        </div>
        <div class="user" style="display: none">
            <ul class="nav navbar-nav nav-top-small" style="margin-left:-15px;"><a class="a" href="personalInformation"
                                                                                   aria-expanded="false">${sessionScope.user.username}用户,欢迎您<span class="caret"></span></a>&nbsp;|&nbsp;
                <a href="addUserName.jsp">注册</a><span class="caret"></span>&nbsp;|&nbsp;
                <a class="break" href="exit.jsp" target="_top">退出</a>
            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right nav-top-small">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false"> <i class="icon iconfont font14 " style=" vertical-align:middle;">&#xe62b;</i>
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
                                              class="pull-left mar-right-30" style="margin-left:-15px;">欢迎使用60321</a>
        <!--<h4 class="navbar-brand font24" >成都万里行科技发展有限公司</h4>-->
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="chaXunLieBiao.jsp"><i class="icon iconfont icon-nav-block font24">&#xe620;</i>
                在线预订</a></li>
            <li><a href="dinDanLieBiao.jsp"><i class="icon iconfont icon-nav-block font24">&#xe61c;</i> 订单管理</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false"> <i class="icon iconfont icon-nav-block font24 ">&#xe623;</i>信息中心<span
                        class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="agency.jsp">代售点</a>
                    </li>
                    <li>
                        <a href="yupiaochaxun.jsp">余票查询</a>
                    </li>
                    <li>
                        <a href="piaojiachaxun.jsp">票价查询</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<input type="hidden" value="${pageContext.request.contextPath}" id="path">
<div class="div1 back">
    <table align="center" style="font-family: 楷体">
        <tr>
            <th><a href="login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </th>
            <th><a href="javaScript:void(0)">车票&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></th>
            <th><a href="javaScript:void(0)">团购服务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></th>
            <th><a href="javaScript:void(0)">会员服务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></th>
            <th><a href="javaScript:void(0)">站车服务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></th>
            <th><a href="javaScript:void(0)">商旅服务&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></th>
            <th><a href="javaScript:void(0)">出行指南&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></th>
            <th><a href="javaScript:void(0)">信息查询&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></th>
        </tr>
    </table>
</div>
</br>
<form action="${pageContext.request.contextPath}/TrainNUmServlet?info=findall" method="post">
<div class="div2 back" style="border:1px solid #3DA0DB;background-color: rgba(138, 173, 178, 0.31);font-family: 楷体;">
    <table align="center" style="color: #040b0e;">
        <tr>
            <td>
                <input type="radio" value="单程" id="dc" name="f" checked/>单程</br>
                <input type="radio" value="往返" id="wf" name="f"/>往返
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;
                出发城市
                <select id="pref" name="vlaue" class="" style="font-family: '微软雅黑 Light';color: #040b0e;width: 100px">
                    <optgroup label="上海">
                        <option value="1">一天</option>
                        <option value="2">二天</option>
                        <option value="3">三天</option>
                        <option value="4">四天</option>
                    </optgroup>
                    <optgroup label="抚州">
                        <option value="2">抚州</option>
                    </optgroup>
                    <optgroup label="南昌">
                        <option value="3">南昌</option>
                    </optgroup>
                    <optgroup label="北京">
                        <option value="4">北京</option>
                    </optgroup>
                    <optgroup label="中关村">
                        <option value="5">中关村</option>
                    </optgroup>
                    <optgroup label="南京">
                        <option value="6">南京</option>
                    </optgroup>
                    <optgroup label="湖南">
                        <option value="7">湖南</option>
                    </optgroup>
                    <optgroup label="深圳">
                        <option value="8">深圳</option>
                    </optgroup>
                    <optgroup label="九江">
                        <option value="9">九江</option>
                    </optgroup>
                </select>
            </td>
            <td>
                &nbsp;—<a href="#" style="color:#040b0e ">换</a>—&nbsp;到达城市&nbsp;
                <select id="ddcs" name="dd" class="" style="font-family: '微软雅黑 Light';color: #040b0e;width: 100px">
                    <optgroup label="上海">
                        <option value="1">上海</option>
                    </optgroup>
                    <optgroup label="抚州">
                        <option value="2">抚州</option>
                    </optgroup>
                    <optgroup label="南昌">
                        <option value="3">南昌</option>
                    </optgroup>
                    <optgroup label="北京">
                        <option value="4">北京</option>
                    </optgroup>
                    <optgroup label="中关村">
                        <option value="5">中关村</option>
                    </optgroup>
                    <optgroup label="南京">
                        <option value="6">南京</option>
                    </optgroup>
                    <optgroup label="湖南">
                        <option value="7">湖南</option>
                    </optgroup>
                    <optgroup label="深圳">
                        <option value="8">深圳</option>
                    </optgroup>
                    <optgroup label="九江">
                        <option value="9">九江</option>
                    </optgroup>
                </select>
                </select>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;
                出发日
                <input name="data" id="cfr" type="date" style="font-family: 黑体;color: #040b0e">
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;
                返程日
                <input type="date" id="fcr" disabled="true" style="font-family: 黑体;color: #040b0e">
            </td>
            <td>
                &nbsp;&nbsp;
                <input style="background-color: #ff7b24;border: 0px;width: 100px;height: 30px;font-family: 楷体;font-size: 18px"
                       type="submit" class="cx" value="开始查询">
            </td>
        </tr>
    </table>
</div>
<br>
<div class="div3 back"
     style="border:1px solid #3DA0DB;background-color: #fcfff9; width: 1200px;height: 76px;font-size: 18px;font-family: 楷体">
    <table style="font-size: 18px">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: 16px">车次类型:</strong>
                <input class="btn" type="button" value="全部">
                <input name="g" id="g" type="checkbox"  value="Gc-高铁">Gc-高铁&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="d" id="d" type="checkbox" value="D-动车">D-动车&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <input name="z" id="z" type="checkbox" value="Z-直达">Z-直达&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <input type="checkbox" id="t" name="t" value="T-特快">T-特快&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <input type="checkbox" id="k" name="k" value="K-快速">K-快速&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <input type="checkbox" name="q" value="其他">其他&nbsp;&nbsp;&nbsp;
                <br>
            </td>

        </tr>
        <tr>
            <td><br>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: 16px">出发车站:</strong>
                <input class="btn" type="button" value="全部">
                <input type="checkbox" value="南昌西">南昌西&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" value="南昌西">南昌&nbsp;
            </td>
        </tr>
    </table>
</div>
</form>
<br>
<span style="margin-left: 166px;font-size: 14px"><strong></strong></span>
<div class="" align="center" style="">
    <table style="width: 1200px;height: 40px;border:1px solid #2e8ded;text-align:center;" border="1px" >
        <tr style="background-color: #2e8ded;color: #ffffff;font-family: 楷体;font-size: 16px;" >
            <th>车次</th>
            <th>出发站<br>到达站</th>
            <th>出发时间<br>到达时间</th>
            <th>历时</th>
            <th>商务座</th>
            <th>特等座</th>
            <th>一等座</th>
            <th>二等座</th>
            <th>软卧</th>
            <th>软座</th>
            <th>硬座</th>
            <th>无座</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${List}" var="list" varStatus="status">
        <tr  style="font-family: 新宋体">
            <td style="font-family: 等线"><strong>${list.trainNo}</strong></td>
            <td style="font-family: 楷体"><strong>
                <c:if test="${list.leaveCity==1}">
                上海
            </c:if>
                <c:if test="${list.leaveCity==2}">
                    抚州
                </c:if>
                <c:if test="${list.leaveCity==3}">
                    南昌
                </c:if>
                <c:if test="${list.leaveCity==4}">
                    北京
                </c:if>
                <c:if test="${list.leaveCity==5}">
                    中关村
                </c:if>
                <c:if test="${list.leaveCity==6}">
                    南京
                </c:if>
                <c:if test="${list.leaveCity==7}">
                    湖南
                </c:if>
                <c:if test="${list.leaveCity==8}">
                    深圳
                </c:if>
                <c:if test="${list.leaveCity==9}">
                    九江
                </c:if>
                <br> <c:if test="${list.destinationCity==1}">
                上海
            </c:if>
                <c:if test="${list.destinationCity==2}">
                    抚州
                </c:if>
                <c:if test="${list.destinationCity==3}">
                    南昌
                </c:if>
                <c:if test="${list.destinationCity==4}">
                    北京
                </c:if>
                <c:if test="${list.destinationCity==5}">
                    中关村
                </c:if>
                <c:if test="${list.destinationCity==6}">
                    南京
                </c:if>
                <c:if test="${list.destinationCity==7}">
                    湖南
                </c:if>
                <c:if test="${list.destinationCity==8}">
                    深圳
                </c:if>
                <c:if test="${list.destinationCity==9}">
                    九江
                </c:if></strong></td>
            <td><strong>${list.leaveTime}</strong><br>${list.arriveTime}</td>
            <td><strong>${list.arriveTime}</strong><br><span style="font-size: 13px">当日到达</span></td>
            <td>
                <c:if test="${list.businessClassSurplusTicket>0}">
                    有\
                    ${list.businessClassMoney}
                </c:if>
                <c:if test="${list.businessClassSurplusTicket<=0}">
                    无
                </c:if>
            </td>
            <td>
              无
            </td>
            <td>
                <c:if test="${list.firstClassSurplusTicket>0}">
                    有\
                    ${list.firstClassMoney}
                </c:if>
                <c:if test="${list.firstClassSurplusTicket<=0}">
                    无
                </c:if>

            </td>
            <td>
                <c:if test="${list.secondClassSurplusTicket>0}">
                    有\
                    ${list.secondtClassMoney}
                </c:if>
                <c:if test="${list.secondClassSurplusTicket<=0}">
                    无
                </c:if>

            </td>
            <td>
                <c:if test="${list.milDlieSurplusSurplusTicket>0}">
                    有\
                    ${list.mildLieMoney}
                </c:if>
                <c:if test="${list.milDlieSurplusSurplusTicket<=0}">
                    无
                </c:if>

            </td>
            <td>
                <c:if test="${list.mildSeatMoneySurplusTicket>0}">
                    有\
                    ${list.mildSeatMoney}
                </c:if>
                <c:if test="${list.mildSeatMoneySurplusTicket<=0}">
                    无
                </c:if>
            </td>
            <td>
                <c:if test="${list.hardSeatSurplusTicket>0}">
                    有\
                    ${list.hardSeatMoney}
                </c:if>
                <c:if test="${list.hardSeatSurplusTicket<=0}">
                    无
                </c:if>
            </td>
            <td>
                <c:if test="${list.notSeatSurplusTicket>0}">
                    有\
                    ${list.notSeatMoney}
                </c:if>
                <c:if test="${list.notSeatSurplusTicket<=0}">
                    无
                </c:if>
            </td>
            <td><a href="${pageContext.request.contextPath}/TrainNUmServlet?info=findid&id=${list.trainNo}"><img src="img/YD.PNG" width="80px" height="40"></a></td>
        </tr>
        </c:forEach>
    </table>
    <tbody>

    </tbody>
</div>
</nav>
</body>

</html>
