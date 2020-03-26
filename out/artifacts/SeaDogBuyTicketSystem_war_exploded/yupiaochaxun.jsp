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
        <ul class="nav navbar-nav nav-top-small" style="margin-left:-15px;">
            您好请<a href="login.jsp"
                  aria-expanded="false">登录<span class="caret"></span></a>&nbsp;|&nbsp;
            <a href="addUserName.jsp">注册</a>
        </ul>
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
<div class="div2 back" style="border:1px solid #3DA0DB;background-color: rgba(138, 173, 178, 0.31);font-family: 楷体;padding-top: 20px">
    <table align="center" style="color: #040b0e;">
        <tr>
            <td>
                出发城市
                <select id="pref_noapply" name="pref_noapply" class="" style="font-family: '微软雅黑 Light';color: #040b0e;width: 100px">
                    <optgroup label="北海道">
                        <option value="01">北海道</option>
                    </optgroup>
                    <optgroup label="東北">
                        <option value="02">青森県</option>
                        <option value="03">岩手県</option>
                        <option value="04">宮城県</option>
                        <option value="05">秋田県</option>
                        <option value="06">山形県</option>
                        <option value="07">福島県</option>
                    </optgroup>
                    <optgroup label="関東">
                        <option value="08">東京都</option>
                        <option value="09">茨城県</option>
                        <option value="10">栃木県</option>
                        <option value="11">群馬県</option>
                        <option value="12">埼玉県</option>
                        <option value="13">千葉県</option>
                        <option value="14">神奈川県</option>
                    </optgroup>
                    <optgroup label="北陸">
                        <option value="15">富山県</option>
                        <option value="16">石川県</option>
                        <option value="17">福井県</option>
                    </optgroup>
                    <optgroup label="甲信越">
                        <option value="18">新潟県</option>
                        <option value="19">山梨県</option>
                        <option value="20">長野県</option>
                    </optgroup>
                    <optgroup label="東海">
                        <option value="21">岐阜県</option>
                        <option value="22">静岡県</option>
                        <option value="23">愛知県</option>
                        <option value="24">三重県</option>
                    </optgroup>
                    <optgroup label="関西">
                        <option value="25">滋賀県</option>
                        <option value="26">京都府</option>
                        <option value="27">大阪府</option>
                        <option value="28">兵庫県</option>
                        <option value="29">奈良県</option>
                        <option value="30">和歌山県</option>
                    </optgroup>
                    <optgroup label="中四国">
                        <option value="31">鳥取県</option>
                        <option value="32">島根県</option>
                        <option value="33">岡山県</option>
                        <option value="34">広島県</option>
                        <option value="35">山口県</option>
                        <option value="36">徳島県</option>
                        <option value="37">香川県</option>
                        <option value="38">愛媛県</option>
                        <option value="39">高知県</option>
                    </optgroup>
                    <optgroup label="九州">
                        <option value="40">福岡県</option>
                        <option value="41">佐賀県</option>
                        <option value="42">長崎県</option>
                        <option value="43">熊本県</option>
                        <option value="44">大分県</option>
                        <option value="45">宮崎県</option>
                        <option value="46">鹿児島県</option>
                    </optgroup>
                    <optgroup label="沖縄">
                        <option value="47">沖縄県</option>
                    </optgroup>
                </select>
            </td>

            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;—<a href="#" style="color:#040b0e ">换</a>—&nbsp;&nbsp;&nbsp;&nbsp;到达城市
                <select id="ddcs" name="pref_noapply" class="" style="font-family: '微软雅黑 Light';color: #040b0e;width: 100px">
                    <optgroup label="北海道">
                        <option value="01">北海道</option>
                    </optgroup>
                    <optgroup label="東北">
                        <option value="02">青森県</option>
                        <option value="03">岩手県</option>
                        <option value="04">宮城県</option>
                        <option value="05">秋田県</option>
                        <option value="06">山形県</option>
                        <option value="07">福島県</option>
                    </optgroup>
                    <optgroup label="関東">
                        <option value="08">東京都</option>
                        <option value="09">茨城県</option>
                        <option value="10">栃木県</option>
                        <option value="11">群馬県</option>
                        <option value="12">埼玉県</option>
                        <option value="13">千葉県</option>
                        <option value="14">神奈川県</option>
                    </optgroup>
                    <optgroup label="北陸">
                        <option value="15">富山県</option>
                        <option value="16">石川県</option>
                        <option value="17">福井県</option>
                    </optgroup>
                    <optgroup label="甲信越">
                        <option value="18">新潟県</option>
                        <option value="19">山梨県</option>
                        <option value="20">長野県</option>
                    </optgroup>
                    <optgroup label="東海">
                        <option value="21">岐阜県</option>
                        <option value="22">静岡県</option>
                        <option value="23">愛知県</option>
                        <option value="24">三重県</option>
                    </optgroup>
                    <optgroup label="関西">
                        <option value="25">滋賀県</option>
                        <option value="26">京都府</option>
                        <option value="27">大阪府</option>
                        <option value="28">兵庫県</option>
                        <option value="29">奈良県</option>
                        <option value="30">和歌山県</option>
                    </optgroup>
                    <optgroup label="中四国">
                        <option value="31">鳥取県</option>
                        <option value="32">島根県</option>
                        <option value="33">岡山県</option>
                        <option value="34">広島県</option>
                        <option value="35">山口県</option>
                        <option value="36">徳島県</option>
                        <option value="37">香川県</option>
                        <option value="38">愛媛県</option>
                        <option value="39">高知県</option>
                    </optgroup>
                    <optgroup label="九州">
                        <option value="40">福岡県</option>
                        <option value="41">佐賀県</option>
                        <option value="42">長崎県</option>
                        <option value="43">熊本県</option>
                        <option value="44">大分県</option>
                        <option value="45">宮崎県</option>
                        <option value="46">鹿児島県</option>
                    </optgroup>
                    <optgroup label="沖縄">
                        <option value="47">沖縄県</option>
                    </optgroup>
                </select>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                出发日
                <input type="date" style="font-family: 黑体;color: #040b0e">
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: 16px">出发车站:</strong>
                <input class="btn" type="button" value="全部">
                <input type="checkbox" value="南昌">南昌&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" value="南昌西">南昌西&nbsp;&nbsp;&nbsp;&nbsp;
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
    </table>
</div>
<br>
<span style="margin-left: 166px;font-size: 14px"><strong>南昌—>南昌西(1月11日&nbsp;周五)</strong></span>
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
        </tr>
        <tr>
            <td>车次</td>
            <td>出发站<br>到达站</td>
            <td>出发时间<br>到达时间</td>
            <td>历时</td>
            <td>商务座</td>
            <td>特等座</td>
            <td>一等座</td>
            <td>二等座</td>
            <td>软卧</td>
            <td>软座</td>
            <td>硬座</td>
            <td>无座</td>
        </tr>
    </table>
    <tbody>

    </tbody>
</div>
</nav>
</body>

</html>
