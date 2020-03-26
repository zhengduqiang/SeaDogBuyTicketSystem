<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/1/15
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中国铁路60321</title>
</head>
<style>
    td span {
        color: red;
    }

    .name {
        font-family: 新宋体;
        font-size: 15px;
    }

    .div1 {
        margin-top: 10px;
    }
</style>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $("#bj").click(function () {
            $("#xs2").css("display", " block");
            $("#xs").css("display", " none");
        });
        $("#bc").click(function () {
            var sjh = $("#sjh").val();
            var yx = $("#yx").val();
            var gddh = $("#gddh").val();
            if (sjh.length != 11 && sjh.length != 0) {
                alert("手机号必须要11位数");
                return false;
            } else if (sjh == "" || yx == "" || gddh == "") {
                $("#xs2").css("display", " none");
                $("#xs").css("display", " block");
                return false;
            } else if (sjh != "" && yx != "" && gddh != "") {
                return true;
            }
        });
    });
</script>
<body>
<div style="border:1px solid rgba(253, 253, 255, 0.64);width:100%;height: 50px;background-color:rgba(253, 253, 255, 0.64);">
    <table style="color: #f8fffe;" align="center">
        <span style="margin-left: 100px ">您好<a href="" style="text-decoration:none;">${user.name}</a></span>
        <a style="margin-left: 1000px;text-decoration:none; "
           href="https://kyfw.12306.cn/otn/gonggao/windowEndorse.html">帮助中心</a>
        <a style="margin-left: 30px;text-decoration:none; " href="changePassword.jsp">修改密码</a>
    </table>
</div>
<br>
<div style="border:1px solid #aeaeb0;width: 900px;margin-left: 300px">
    &nbsp;&nbsp;&nbsp;&nbsp;<span><h4>&nbsp;&nbsp;&nbsp;&nbsp;基本信息</h4></span>
    <div>
        <table class="div1" align="center">
            <tr style="height: 40px">
                <td class="name">&nbsp; <span>*</span>用户名：</td>
                <td>${user.username}</td>
            <tr style="height: 40px">
                <td class="name">&nbsp;&nbsp; <span>*</span>姓名：</td>
                <td>${user.name}</td>
            </tr>
            <tr style="height: 40px">
                <td class="name">&nbsp;&nbsp; <span>*</span>性别：</td>
                <td>${user.sex}</td>
            </tr>
            <tr style="height: 40px">
                <td class="name"><span>*</span>国家/地区：</td>
                <td>中国CHINA</td>
            </tr>
            <tr style="height: 40px">
                <td class="name"><span>* </span>证件类型：</td>
                <td>${user.certificateType}</td>
            </tr>
            <tr style="height: 40px">
                <td class="name"><span>*</span> 证件号码：</td>
                <td>${user.identityCard}</td>
            </tr>
            <tr style="height: 40px">
                <td class="name"><span>*</span> 出生日期：</td>
                <td>${user.dateOfbirth}</td>
            </tr>
        </table>
    </div>
    <hr>
    <div class="div2" style="display: block" id="xs">
        &nbsp;&nbsp;&nbsp;&nbsp;<span><h4>&nbsp;&nbsp;&nbsp;&nbsp;联系方式<img src="img/bj.PNG" width="100px" id="bj"
                                                                           name="bj"
                                                                           style="margin-left: 790px;margin-top: -32px"/>
    </h4></span>

        <table align="center">
            <tr style="height: 40px">
                <td class="name"><span>* </span>手机号：</td>
                <td>${user.cellphonenumber}</td>
            </tr>
            <tr style="height: 40px">
                <td class="name">固定电话：</td>
                <td>${user.fixationphone}</td>
            </tr>
            <tr style="height: 40px">
                <td class="name">&nbsp;<span>* </span>邮箱：</td>
                <td>${user.emailAddress}</td>
            </tr>
            <tr style="height: 40px">
                <td class="name">&nbsp;&nbsp;地址：</td>
                <td>江西抚州</td>
            </tr>
            <tr style="height: 40px">
                <td class="name"> &nbsp;&nbsp;邮编：</td>
                <td>3304</td>
            </tr>
        </table>
    </div>
    <div class="div3" style="display: none" id="xs2">
        <form action="${pageContext.request.contextPath}/userNameServlet?info=updateGeRenXinXi" method="post">
            &nbsp;&nbsp;&nbsp;&nbsp;<span><h4>&nbsp;&nbsp;&nbsp;&nbsp;联系方式</h4></span>
            <input type="submit" value="保存" id="bc" name="bc"
                   style="margin-left: 790px;margin-top: -50px; width: 70px;height: 30px;background-color: #f47e3a;border: 0px;color: #fffcfd"/>
            <table align="center">
                <tr style="height: 40px">
                    <td class="name"><span>* </span>手机号：</td>
                    <td><input type="text" id="sjh" name="sjh"/></td>
                </tr>
                <tr style="height: 40px">
                    <td class="name">固定电话：</td>
                    <td><input type="text" id="gddh" name="gddh"/></td>
                </tr>
                <tr style="height: 40px">
                    <td class="name">&nbsp;<span>* </span>邮箱：</td>
                    <td><input type="text" id="yx" name="yx"/></td>
                </tr>
                <tr style="height: 40px">
                    <td class="name">&nbsp;&nbsp;地址：</td>
                    <td>江西抚州</td>
                </tr>
                <tr style="height: 40px">
                    <td class="name"> &nbsp;&nbsp;邮编：</td>
                    <td>3304</td>
                </tr>
            </table>
        </form>
    </div>
    <hr>
    <div class="div4">
        &nbsp;&nbsp;&nbsp;&nbsp;<span><h4>&nbsp;&nbsp;&nbsp;&nbsp;附加信息</h4></span>
        <table align="center">
            <tr style="height: 40px">
                <td class="name"><span>* </span>旅客类型：</td>
                <td>成人</td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
