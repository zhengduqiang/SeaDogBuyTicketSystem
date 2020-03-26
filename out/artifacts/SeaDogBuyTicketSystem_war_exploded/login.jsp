<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/1/3
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <!--手机自适应<meta name="viewport" content="width=device,initial-scale=1.0">-->
    <title>火车票登录</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/comm.js"></script>
</head>
<body>
<!--head-->
<div class="header">
    <div class="inner">
        <div class="logo" style="margin-top: 10px">
            <h2>您好欢迎登录60321</h2>
        </div>
        <div class="headlink">
            <a href="chaXunLieBiao.jsp">网站导航</a>
        </div>
    </div>
</div>
<!--head end-->
<!--banner-->
<div class="middle">
    <div class="cont">
        <div class="banner">
            <img src="img/tr.png" width="860" height="400" style="opacity:0.3"/>
        </div>
        <div class="loginbox">

            <div class="head">
                <a class="left" href="###">.</a>
                <a class="right sel" href="###">账号密码登录</a>
                <div class="bottomline"></div>
            </div>

            <div class="ct">
                <div class="item" id="itme">          <!--关闭记录 autocomplete="off"-->
                    <form method="post" action="" name="myform" onsubmit="checkpost()">
                        <div class="input">
                            <label>手机号</label><input placeholder="可用作登录名" autocomplete="off" type="text"/>
                        </div>
                        <div class="input">
                            <label>验证码</label><input placeholder="动态密码" type="password"/>
                            <br/>
                        </div>
                        <div class="input">
                            <label></label>
                            <input type="submit" id="" class="submit" style="width:220px;" autocomplete="off" value="登录"/>
                        </div>
                    </form>
                </div>
                <div class="item">
                    <div class="logintip"></div>
                    <form action="${pageContext.request.contextPath}/userServlet?info=login" method="post">
                    <div class="inputbox">
                        <input name="username" autocomplete="off" placeholder="手机号"/>
                        <a href="javascript:void(0)" class="delusername"></a>
                    </div>
                    <div class="inputbox">
                        <input name="password" type="password" placeholder="密码"/>
                    </div>
                    <%--<div class="">--%>
                        <%--&nbsp;&nbsp;&nbsp;<input id="yz" name="yz" class="yz" type="text" placeholder="验证码" style="width: 100px;height: 40px"/>--%>
                        <%--<button id="a" style="background:#fabf1f; border:0; border-radius:5px; color:#FFF;width:100px; height:40px"--%>
                                <%--onclick="document.getElementById('y_z_m').innerHTML = y_z_m();">点击获取验证码--%>
                        <%--</button>--%>
                        <%--<span id="y_z_m"></span>--%>
                        <%--&nbsp;<span class="yzm"></span>--%>
                    <%--</div>--%>
                        <div class="submitBtn">
                            <input id="submit" type="submit" value="登 录" />
                        </div>
                    </form>

                    <div style="margin-top:20px;">
                        <a href="addUserName.jsp">立即注册</a>
                        <a href="forgetThePassword.jsp" style="float:right;">忘记密码？</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div align="center" style="color:blanchedalmond"><h1>${message}</h1></div>
</div>
<!--banner end-->
<div class="foot">

    <p>
        火车订票版权所有
        <br/>
        北大青鸟南昌德宏T49万伟杰郑杜强所有
    </p>
</div>
</body>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    function y_z_m() {
        var arr = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
        var str = '';
        for (var i = 0; i < 4; i++)
            str += '' + arr[Math.floor(Math.random() * arr.length)];
        return str;
    }
    $("#wanc").click(function () {
        var name = $("input[name='name']").val().trim();
        var yz = $("input[name='yz']").val().trim();
        var yz1 = /^['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']{4}$/;
//        /*if (yz.length == 0) {
//            alert("dfdsafieieiei");
//            $(".yzm").html('请输入验证码').css("font-size", "16px").css("color", "red");
//            return;
//        }
//        if (document.getElementById("y_z_m").innerHTML != yz) {
//            alert("dfdsafieieiei");
//            $(".yzm").html('请输正确入验证码').css("font-size", "16px").css("color", "red");
//            return;
//
//        }
        if (!yz1.test(yz)) {
            alert("dfdsafieieiei");
            $(".yzm").html('验证码格式不正确').css("font-size", "16px").css("color", "red");
            return;
        }
        else {
            alert("11")
            $(".complete").show(200);
            $(".validate").hide(200);
            document.getElementById("mob").innerHTML = name;
            $(".user_z").css("box-shadow", "0px 0px 5px 4px #fff");
        }

  //  });
    <!--完成 end-->

    清空
    $("#name,#pw,#pw1,#yz").focus(function () {
        $(".t,.t1,.t2,.yzm").html('');
    });
   $(function(){
       $("#a").click(function(){
           return false;
       });

       $("#wanc").click(function(){
           if($("#yz").val() != $("#y_z_m").text()){
               alert("验证码输入错误");
               return false;
           }else{
               $("form").submit();
           }
   });
</script>
</html>
