<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/1/8
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>代售点查询
    </title>
    <script src="js/jquery.js"></script>
    <script src="js/jquery.tableui.js"></script>
    <link href='css/jquery.tableui.css' rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        $(function () {
            $(".table_solid").tableUI();
        });
    </script>
    <style type="text/css">
        /* demo */
        .demo {
            width: 80%;
            margin: 20px auto
        }

        .demo h3 {
            height: 32px;
            line-height: 32px
        }

        .demo p {
            line-height: 24px
        }

        pre {
            margin-top: 10px;
            padding: 6px;
            background: #f7f7f7
        }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.cityselect.js"></script>
    <script type="text/javascript">
        $(function () {
            //demo04
            $("#city_4").citySelect({
                prov: "湖南",
                city: "长沙",
                dist: "岳麓区",
                nodata: "none"
            });
            $("#clj").mousemove(function () {
                $("#ck").css("display", "block");
            });
            $("#ck").mousemove(function () {
                $("#ck").css("display", "block");
            });
            $("#ck").mouseout(function () {
                $("#ck").css("display", "none");
            });

            $("#xx1").mousemove(function () {
                $("#xx2").css("display", "block");
            });
            $("#xx2").mousemove(function () {
                $("#xx2").css("display", "block");
            });
            $("#xx2").mouseout(function () {
                $("#xx2").css("display", "none");
            });
        });
    </script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
<c:if test="${empty user}">
    <script type="text/javascript">
        $(function(){
            $(".login").show();
            $(".user").hide();
        });
    </script>
</c:if>

<c:if test="${user!=null}">
    <script type="text/javascript">
    $(function(){
    $(".login").hide();
    $(".user").show();
    });
    </script>
</head>
<body>
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
            <ul class="nav navbar-nav nav-top-small" style="margin-left:-15px;">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false" id="clj">
                        您好${sessionScope.user.username}
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu" id="ck" style="display: none">
                        <li><a href="personalInformation.jsp">查看个人信息</a></li>
                        <li><a href="changePassword.jsp">修改密码</a></li>
                        <li><a href="exit.jsp">退出</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right nav-top-small">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false" id="xx1"> <i class="icon iconfont font14 " style=" vertical-align:middle;"></i>
                        信息中心 <span class="caret"></span></a>
                    <ul class="dropdown-menu" id="xx2">
                        <li><a href="#">余票查询</a></li>
                        <li><a href="#">票价查询</a></li>
                        <!--<li role="separator" class="divider"></li>-->
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right nav-top-small">
                <li><a href="chaXunLieBiao.jsp">订票首页</a></li>

            </ul>
        </div>
    </nav>
    <!-- 小导航结束 -->
    <div class="demo" align="center"
         style="border:1px solid #2f97ff;background-color: rgba(160, 184, 177, 0.35);width: 700px;height: 110px">
        <div id="city_4">
            <form action="${pageContext.request.contextPath}/InfoServlet?info=all" method="post">
            <table>
                <tr>
                    </br>
                    <td style="font-family:KaiTi;font-size: 17px">
                        <strong>所在地区&nbsp;</strong>
                    </td>
                    <th>
                        <select name="prov" class="prov" style="width: 100px;height: 25px;"></select><span>——</span>
                    </th>
                    <th>
                        <select name="city" class="city" disabled="disabled"
                                style="width: 100px;height: 25px;"></select><span>——</span>
                    </th>
                    <th>
                        <select name="dist" class="dist" disabled="disabled" style="width: 100px;height: 25px;"></select>
                        <input type="submit" value="查询"
                               style="width: 85px;height: 25px;background-color: #ff7c34;border:0;color: #FEFCFC;font-family:KaiTi;font-size: 17px"/>
                    </th>
                </tr>
            </table>
            </form>
            <div style="margin-left: -315px">
                </br><span style="font-family:KaiTi;font-size: 17px"><strong>快速查找&nbsp;</strong></span>
                <input type="search" placeholder="输入代售点名称"
                       style="width: 155px;height: 25px;font-family:KaiTi;font-size: 15px"/>
                <input id="_submitBtn" type="button" class="sub" value="查询"
                       style="cursor: pointer;margin-left: -35px;height: 25px"/>

            </div>
        </div>

    </div>
    <table class="table_solid" border="0" cellspacing="0">
        <span style="margin-left: 410px">江西 共有 1 个代售点</span>
        <tr style="color: #fefcfc;font-family:KaiTi;font-size: 18px;">
            <th>序号</th>
            <th>代售点名称</th>
            <th>地址</th>
            <th>营业时间</th>
            <th>窗口数量</th>
        </tr>
        <tr>
            <td>1</td>
            <td>a1</td>
            <td>j。</td>
            <td>f</td>
            <td>dd</td>
        </tr>
    </table>
</body>
</html>
