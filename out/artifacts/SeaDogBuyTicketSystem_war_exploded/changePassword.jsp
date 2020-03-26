<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/1/3
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>修改密码</title>
    <link rel="stylesheet" type="text/css" href="css/css.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<div id="pageAll">
    <div class="pageTop">
        <div class="page">
            <strong><span style="margin-left: 720px;font-size: 29px;">修改密码</span></strong>
        </div>
    </div>
    <div class="page ">
        <!-- 修改密码页面样式 -->
        <div class="bacen">
            <form action="${pageContext.request.contextPath}/userNameServlet?info=updatePassword" method="post">
                <div class="bbD">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>用户名：</strong>&nbsp;&nbsp;&nbsp;&nbsp;<span
                        name="name">${sessionScope.user.username}</span>
                </div>
                <div class="bbD">&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong>手机号码：</strong>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" style="border: 0px;background: none" value="${sessionScope.user.cellphonenumber}" name="sjhm" readonly/></div>
                <div class="bbD">
                    &nbsp;&nbsp;&nbsp;&nbsp;<strong>输入旧密码：</strong><input type="password" class="input3" name="jmm"
                                                                          onblur="checkpwd1()" id="pwd1"/> <img
                        class="imga"
                        src="img/ok.png"/><img
                        class="imgb" src="img/no.png"/>
                </div>
                <div class="bbD">
                    &nbsp;&nbsp;&nbsp;&nbsp;<strong>输入新密码：</strong><input type="password" class="input3" name="xmm"
                                                                          onblur="checkpwd2()" id="pwd2"/> <img
                        class="imga"
                        src="img/ok.png"/><img
                        class="imgb" src="img/no.png"/>
                </div>
                <div class="bbD">
                    <strong>再次确认密码：</strong><input type="password" class="input3" onblur="checkpwd3()"
                                                   id="pwd3"/> <img class="imga" src="img/ok.png"/><img
                        class="imgb" src="img/no.png"/>
                </div>
                <div class="bbD">
                    <p class="bbDP">
                        <input type="submit" value="提交" class="btn_ok btn_yes"/>
                        <a class="btn_ok btn_no" href="chaXunLieBiao.jsp">取消</a>
                    </p>
                </div>
            </form>
        </div>

        <!-- 修改密码页面样式end -->
    </div>
</div>
</body>
<script type="text/javascript">
    function checkpwd1() {
        var user = document.getElementById('pwd1').value.trim();
        if (user.length >= 6 && user.length <= 12) {
            $("#pwd1").parent().find(".imga").show();
            $("#pwd1").parent().find(".imgb").hide();
            return true;
        } else {
            $("#pwd1").parent().find(".imgb").show();
            $("#pwd1").parent().find(".imga").hide();
            return false;
        }
    }
    function checkpwd2() {
        var user = document.getElementById('pwd2').value.trim();
        if (user.length >= 6 && user.length <= 12) {
            $("#pwd2").parent().find(".imga").show();
            $("#pwd2").parent().find(".imgb").hide();
            return true;
        } else {
            $("#pwd2").parent().find(".imgb").show();
            $("#pwd2").parent().find(".imga").hide();
            return false;
        }
    }
    function checkpwd3() {
        var user = document.getElementById('pwd3').value.trim();
        var pwd = document.getElementById('pwd2').value.trim();
        if (user.length >= 6 && user.length <= 12 && user == pwd) {
            $("#pwd3").parent().find(".imga").show();
            $("#pwd3").parent().find(".imgb").hide();
            return true;
        } else {
            $("#pwd3").parent().find(".imgb").show();
            $("#pwd3").parent().find(".imga").hide();
            return false;
        }
    }
</script>
</html>
