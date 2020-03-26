<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/1/3
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>找回密码</title>
    <link rel="stylesheet" type="text/css" href="css/home.css"/>
</head>
<style>
    ::-webkit-input-placeholder {
        color: #f9fbff !important;
    }
</style>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $("#zhmm").click(function () {
            var userName = $("#yhm").val();
            var sfzhm = $("#sfzhm").val();
            var mbda = $("#mbda").val();
            var zsxm = $("#zsxm").val();
            var srxmm = $("#srxmm").val();
            var qrmm = $("#qrmm").val();
            if (userName == "" || sfzhm == "" || mbda == "" || (zsxm = "" || srxmm == "" || qrmm == "")) {
                alert("请填写一个完整的数据以便我们为您找回密码！");
                return false;
            } else if (sfzhm.length != 18) {
                alert("身份证号码必须是18位数字");
                return false;
            } else if (srxmm.length <= 8 || qrmm <= 8) {
                alert("输入的密码不能小于9位数");
                return false;
            }
            else if (srxmm != qrmm) {
                alert("您两次输入的密码不同,请仔细填写新密码");
                return false;
            }
            else {
                return true;
            }
        });
    });
</script>
<body>
<!--head-->
<div class="header">
    <div class="inner">
        <div class="logo">
            <h2 style="margin-top: 10px">60321找回密码</h2>
        </div>
        <div class="headlink">
            <a href="login.jsp">登录</a>
            &nbsp;|&nbsp;
            <a href="addUserName.jsp">注册</a>
        </div>
    </div>
</div>
<!--head end-->
<!--middle-->
<div class="middle">
    <div class="cont">
        <!--指南-->
        <div class="class_a">
            <!--申请订票-->
            <div class="all1">
                <h2 style="color:#fff;font-family: SimSun;margin-top: 10px">找回密码</h2>
                <form runat="server" method="post"
                      action="${pageContext.request.contextPath}/userNameServlet?info=userName">
                    <table width="800" height="300" style="margin:auto; margin-top:50px; border:2px solid #FFF;"
                           border="10" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="120" align="center"
                                style="color:#fff;font-family: MicrosoftYaHei;font-size: 17px;"><strong>用户名</strong>
                            </td>
                            <td width="277.6"><input style="width:250px; background:none; " type="text" name="userName"
                                                     id="yhm"
                                                     placeholder="请输入用户名"/><span>*</span>
                            </td>
                            <td width="120" align="center"
                                style="color:#fff;font-family: MicrosoftYaHei;font-size: 17px"><strong>身份证号码</strong>
                            </td>
                            <td width="277.6"><input style="width:250px; background:none;" type="text" name="sfzhm"
                                                     id="sfzhm"
                                                     placeholder="输入身份证号码"/><span>*</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="center"
                                style="color:#fff;font-family: Microsoft YaHei;font-size: 17px"><strong>密保问题</strong>
                            </td>
                            <td width="277.6"><select
                                    style="width:250px; background:none; border:0; outline:none; color:#CCC" id="mbwt"
                                    name="mbwt">
                                <option value="你妈妈叫什么？">你妈妈叫什么？</option>
                                <option value="你爸爸叫什么？">你爸爸叫什么？</option>
                                <option value="你好朋友叫什么？">你好朋友叫什么？</option>
                            </select><span>*</span></td>
                            </td>
                            <td width="120" align="center"
                                style="color:#fff;font-family: Microsoft YaHei;font-size: 17px"><strong>密保答案</strong>
                            </td>
                            <td width="277.6">
                                <input style="width:250px; background:none;" type="text" id="mbda"
                                       placeholder="输入密保答案" name="mbda"/><span>*</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="center"
                                style="color:#fff;font-family: Microsoft YaHei;font-size: 17px"><strong>真实姓名</strong>
                            </td>
                            <td><input style="width:250px; background:none;" type="text"
                                       placeholder="请输入本人的真实姓名" name="zsxm" id="zsxm"/><span>*</span></td>
                            <td width="120" align="center"
                                style="color:#fff;font-family: Microsoft YaHei;font-size: 17px"><strong>证件类型</strong>
                            </td>
                            <td width="277.6"><select
                                    style="width:250px; background:none; border:0; outline:none; color:#CCC"
                                    name="zjlx">
                                <option value="中国居民身份证">中国居民身份证</option>
                                <option value="台湾通行证">台湾通行证</option>
                                <option value="港澳通行证">港澳通行证</option>
                            </select><span>*</span>
                            </td>
                        </tr>
                        <tr>
                            <td width="120" align="center"
                                style="color:#fff;font-family: Microsoft YaHei;font-size: 17px"><strong>输入新密码</strong>
                            </td>
                            <td><input style="width:250px; background:none;" type="password"
                                       placeholder="输入密码" name="srxmm" id="srxmm"/><span>*</span></td>
                            <td width="120" align="center"
                                style="color:#fff;font-family: Microsoft YaHei;font-size: 17px"><strong>确认密码</strong>
                            </td>
                            <td><input style="width:250px; background:none;" type="password"
                                       placeholder="再次确认密码" name="qrmm" id="qrmm"/><span>*</span></td>
                        </tr>
                        <tr>
                            <td align="center" style="color:#fff;font-family: SimSun;font-size: 17px">
                                <strong>备注</strong></td>
                            <td colspan="3">
                                <textarea
                                        style="; color:#FFF; outline:none;resize:none;width:670px; height:70px; border:0; background:none;"
                                        name="" cols="0" rows="0"></textarea></td>
                        </tr>

                    </table>
                    <div class="tom" style="margin-top:60px;">
                        <input name="clear" style="width:80px; height:50px;" type="reset" value="清空"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="play" id="zhmm" style="width:80px; height:50px; " type="submit" value="找回密码"/>

                    </div>
                    <span style="color: #be210f;margin-left: 650px">注：标注*为必填项！</span>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/home.js"></script>
</html>
