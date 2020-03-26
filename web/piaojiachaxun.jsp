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
    <title>Title</title>
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
    <script type="text/jxavascript" src="js/layer/layer.js"></script>
    <!-- 日历控件 -->
    <script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>

    <style type="text/css" rel="stylesheet">
        .back {
            background-color: #00A4F2;
        }

        * {

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

        tr th {
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#wf").click(function () {
                $('#fcr').removeAttr('disabled');
            });
            $("#dc").click(function () {
                document.getElementById("fcr").disabled = true;
            });
        });
    </script>
</head>
<br>
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
                    <li><a href="">退出</a></li>
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


<div class="div1 back">
    <table align="center" style="font-family: 楷体">
        <tr>
            <th><a href="chaXunLieBiao.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
<div class="div2 back"
     style="border:1px solid #3DA0DB;background-color: rgba(138, 173, 178, 0.31);font-family: 楷体;padding-top: 20px">
    <table align="center" style="color: #040b0e;">
        <form action="${pageContext.request.contextPath}/trainumberinfoServlet?info=piaojiachaxun" method="post">
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    出发城市
                    <select id="pref_noapply" name="pref_noapply" class=""
                            style="font-family: '微软雅黑 Light';color: #040b0e;width: 100px">
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
                        <optgroup label="南京">
                            <option value="6">南京</option>
                        </optgroup>
                        <optgroup label="湖南">
                            <option value="6">湖南</option>
                        </optgroup>
                        <optgroup label="7">
                            <option value="深圳">深圳</option>
                        </optgroup>
                        <optgroup label="8">
                            <option value="九江">九江</option>
                        </optgroup>
                    </select>
                </td>
                <td>
                    &nbsp;—<a href="#" style="color:#040b0e ">换</a>—&nbsp;到达城市&nbsp;
                    <select id="ddcs" name="dd_noapply" class=""
                            style="font-family: '微软雅黑 Light';color: #040b0e;width: 100px">
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
                        <optgroup label="南京">
                            <option value="5">南京</option>
                        </optgroup>
                        <optgroup label="湖南">
                            <option value="6">湖南</option>
                        </optgroup>
                        <optgroup label="深圳">
                            <option value="7">深圳</option>
                        </optgroup>
                        <optgroup label="九江">
                            <option value="8">九江</option>
                        </optgroup>
                    </select>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    出发日
                    <input type="date" name="cfr" style="font-family: 黑体;color: #040b0e">
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input style="background-color: #ff7b24;border: 0px;width: 100px;height: 30px;font-family: 楷体;font-size: 18px"
                           type="submit" class="cx" value="开始查询">
                </td>
            </tr>
        </form>
    </table>
</div>
<br>
<%--<div class="div3 back"
     style="border:1px solid #3DA0DB;background-color: #fcfff9; width: 1200px;height: 76px;font-size: 18px;font-family: 楷体">
   &lt;%&ndash; <table style="font-size: 18px">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: 16px">出发车站:</strong>
                <input class="btn" type="button" value="全部">
                <input type="checkbox" value="南昌">
                <c:if test="${trainnumber.stationNoe==1}">
                    <c:if test="${info.leaveCity==1}">
                        上海
                    </c:if>
                    <c:if test="${info.leaveCity==2}">
                        抚州
                    </c:if>
                </c:if>
                <c:if test="${trainnumber.stationNoe==2}">
                    <c:if test="${info.leaveCity==1}">
                        上海北
                    </c:if>
                    <c:if test="${info.leaveCity==2}">
                        抚州东
                    </c:if>
                </c:if>
                <c:if test="${trainnumber.stationNoe==3}">
                    <c:if test="${info.leaveCity==1}">
                        上海西
                    </c:if>
                    <c:if test="${info.leaveCity==2}">
                        抚州西
                    </c:if>
                </c:if>
                <c:if test="${trainnumber.stationNoe==4}">
                    <c:if test="${info.leaveCity==1}">
                        上海东
                    </c:if>
                </c:if>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" value="南昌西">
                <c:if test="${trainnumber.stationNoe==1}">
                    <c:if test="${info.leaveCity==1}">
                        上海
                    </c:if>
                    <c:if test="${info.leaveCity==2}">
                        抚州
                    </c:if>
                </c:if>
                <c:if test="${trainnumber.stationNoe==2}">
                    <c:if test="${info.leaveCity==1}">
                        上海北
                    </c:if>
                    <c:if test="${info.leaveCity==2}">
                        抚州东
                    </c:if>
                </c:if>
                <c:if test="${trainnumber.stationNoe==3}">
                    <c:if test="${info.leaveCity==1}">
                        上海西
                    </c:if>
                    <c:if test="${info.leaveCity==2}">
                        抚州西
                    </c:if>
                </c:if>
                <c:if test="${trainnumber.stationNoe==4}">
                    <c:if test="${info.leaveCity==1}">
                        上海东
                    </c:if>
                </c:if>

                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: 16px">出发车站:</strong>
                <input class="btn" type="button" value="全部">
                <input type="checkbox" value="抚州西">抚州西&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" value="抚州">抚州&nbsp;
            </td>
        </tr>
    </table>&ndash;%&gt;
</div>--%>
<br>
<span style="margin-left: 166px;font-size: 14px"><strong></strong></span>
<div class="" align="center" style="">
    <table style="width: 1200px;height: 40px;border:1px solid #2e8ded;text-align:center;" border="1px">
        <tr style="background-color: #2e8ded;color: #ffffff;font-family: 楷体;font-size: 16px;">
            <th>车次</th>
            <th>出发站<br>到达站</th>
            <th>出发时间<br>到达时间</th>
            <th>历时</th>
            <th>商务座</th>
            <th>一等座</th>
            <th>二等座</th>
            <th>软卧</th>
            <th>软座</th>
            <th>硬座</th>
            <th>无座</th>
        </tr>

        <c:forEach items="${trainnumber}" var="info">
            <tr>
                <td>${info.trainNo}</td>
                <td>
                    <c:if test="${info.leaveCity==1}">
                        上海
                    </c:if>
                    <c:if test="${info.leaveCity==2}">
                        抚州
                    </c:if>

                    <br>
                    <c:if test="${info.destinationCity==2}">
                        抚州
                    </c:if>
                    <c:if test="${info.destinationCity==1}">
                        上海
                    </c:if>
                </td>
                <td>
                        ${info.leaveTime}
                    <br>
                        ${info.arriveTime}
                </td>
                <td>${info.lastTime}</td>
                <td>${info.businessClassMoney}</td>
                <td>${info.firstClassMoney}</td>
                <td>${info.secondtClassMoney}</td>
                <td>${info.mildLieMoney}</td>
                <td>${info.mildSeatMoney}</td>
                <td>${info.hardSeatMoney}</td>
                <td>${info.notSeatMoney}</td>
            </tr>
        </c:forEach>
    </table>
    <tbody>

    </tbody>
</div>
</nav>
</body>

</html>
