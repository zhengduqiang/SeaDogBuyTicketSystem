<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/1/3
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册</title>
    <link type="text/css" rel="stylesheet" href="css/zhuce.css"/>
</head>
<style type="text/css" rel="stylesheet">
    .red{
        color: red;
    }
    .green{
        color:green;
    }
</style>
<body>
<!--head-->
<div class="header">
    <div class="inner">
        <div class="logo">
            <h2 style="margin-top: 10px">欢迎注册60321</h2>
            <a href="chaXunLieBiao.jsp" title="火车票"><img src="img/logo2.png"
                                                         style="width: 600px;height: 400px;margin-left: 650px;margin-top: 185px;"/></a>
        </div>
        <div class="headlink">
            <a href="chaXunLieBiao.jsp">网站导航</a>
            &nbsp;|&nbsp;
            <a href="login.jsp">登录</a>
        </div>
    </div>
</div>
<!--head end-->
<!--middle-->
<div class="middle">
    <div class="cont">
        <!--填写-->
        <ul>
            <li>
        <span class="user_t" style="box-shadow:0px 0px 5px 4px #fff; ">
        </span>填写
            </li>
            <li><span class="user_y"></span>验证</li>
            <li><span class="user_z"></span>注册成功</li>
        </ul>
        <form method="post" action="${pageContext.request.contextPath}/userServlet?info=add">
      <input type="hidden" value="${pageContext.request.contextPath}" id="path">
        <div class="user">
            <h3>用户注册</h3>
                <div class="input">
                    <label>用户名</label><input value="" placeholder="用作登录名" autocomplete="off" type="text" name="name"
                                             id="name"/>&nbsp;<span class="t"></span></div>
                <div class="input">
                    <label style="letter-spacing:15px">密码</label><input placeholder="8-20位字母、数字和符号" type="password"
                                                                        name="pw" id="pw"/>&nbsp;<span
                        class="t1"></span>
                    <br/>
                </div>
                <div class="input">
                    <label for="pw">确认密码</label><input value="" placeholder="再次输入密码" type="password" name="pw1"
                                                       id="pw1"/>&nbsp;<span class="t2"></span>
                </div>
                </br>
                <span>性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input value="男"
                                                                                                              type="radio"
                                                                                                              name="xb"
                                                                                                              checked="checked"
                                                                                                              style="width: 15px;height: 14px"/>&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input value="女" name="xb" type="radio" style="width: 15px;height: 14px"/>&nbsp;女
                <div class="input">
                    <label>出生日期</label><input value="" autocomplete="off" type="date" name="data"
                                              id="data"/></div>

                <div class="input">
                真实姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input value="" placeholder="请输入您的真实姓名" type="text" name="zsxm"
                                             id="zsxm"/>&nbsp;<span class="t2"></span>
            </div>
                <div class="input">
                    身份证号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input value="" placeholder="请输入本人的身份证号码" type="text" name="sfzhm"
                                                 id="sfzhm"/>&nbsp;<span class="t2"></span>
                </div>
                <div class="input" id="input" style="margin-left: 380px;/*margin-top: -30px*/">
                    <label style="margin-top: 50px"></label>
                    <input type="button" id="submit" class="submit" style="width:220px;" value="下一步"/>
                </div>
                <div><a href="#" style="color:#FFC; display:block; margin-top:20px;">
                    注册即代表您同意我们的服务协议和隐私政策
                </a></div>
            <br/>


            <%--第二部分--%>
            <div class="tow" style="padding-left: 400px;margin-top: -525px">

                <div class="input">
                    电子邮箱&nbsp;&nbsp;&nbsp;<input value="" placeholder="电子邮箱" autocomplete="off" type="email" name="dzyx"
                                                 id="dzyx"/>&nbsp;<span class="d"></span><br>
                    <div class="input">
                        <span>手机号码&nbsp;&nbsp;&nbsp;</span><input value="" placeholder="手机号码" autocomplete="off" type="text" name="sjhm"
                                                                  id="sjhm"/>&nbsp;<span class="s"></span></div>
                    <div class="input">
                        <span>固定手机&nbsp;&nbsp;&nbsp;</span><input value="" placeholder="手机号码" autocomplete="off" type="text" name="gdhm"
                                                                  id="gdsjh"/>&nbsp;<span class="s"></span></div><br>
                    <span width="120" align="center" style="color:#fff;font-family: Microsoft YaHei;font-size: 17px">证件类型&nbsp;</span>
                    <td width="210px"><select name="zjlx" id="zjlx"
                            style="width:204px;height: 42px; background-color: #92B8B1; border:2px; outline:none; color:#fefcfc">
                        <option>请选择</option>
                        <option value="中国居民身份证">中国居民身份证</option>
                        <option value="港外身份证">港外身份证</option>
                    </select></td>
                    <br><br>
                    <span width="120" align="center" style="color:#fff;font-family: Microsoft YaHei;font-size: 17px">密保问题&nbsp;</span>
                    <td width="210px"><select name="what" id="what"
                            style="width:204px;height: 42px; background-color: #92B8B1; border:2px; outline:none; color:#fefcfc">
                        <option>请选择</option>
                        <option value="你爸爸叫什么">你爸爸叫什么</option>
                        <option value="你妈妈叫什么">你妈妈叫什么</option>
                    </select></td>
                    <br>
                    <div class="input">
                        <span>密保答案&nbsp;&nbsp;&nbsp;</span><input value="" placeholder="密保答案" autocomplete="off"
                                                                  type="text" name="mbda"
                                                                  id="mbda"/>&nbsp;<span class="s"></span>
                    </div>

                </div>
            </div>

        </div>
        <!--填写 end-->

        <!--验证-->
        <div class="validate">
            <h3>用户验证</h3>
            <p id="tel">请点击获取以下该手机号<span style="text-decoration:underline;" id="tell"></span>的验证码,
                <br/>请在重新获取验证之前完成验证。注:请勿刷新页面！</p>
            <div style="padding-left:88px;">
                <input type="text" id="yz" name="yz" placeholder="区分大小写"/>


                <button id="a" style=" cursor:pointer;background:#fabf1f; border:0; border-radius:5px; color:#FFF;width:100px; height:30px"
                        onclick="document.getElementById('y_z_m').innerHTML = y_z_m();">点击获取验证码
                </button>
                <span id="y_z_m"></span>
                &nbsp;<span class="yzm"></span>
            </div>
            <div style="padding-left:88px; margin-top:50px;">
                <input type="submit" id="wanc" class="wanc" style="width:220px;" autocomplete="off" value="完成注册"/>
            </div>
            <div style="padding-left:88px; margin-top:50px;">
                <input type="button" id="enter" class="enter" style="width:220px;" autocomplete="off" value="返回上一层"/>
            </div>
        </div>
        </form>
        <!--验证 end-->
        <!--完成-->
        <%--<div class="complete">--%>

            <%--<p><img src="img/timg.png" width="100" height="100"/>恭喜您,使用<span id="mob"></span>手机号注册成功！</p>--%>

            <%--<div class="dj"><a href="login.jsp">点击我,登录账号！</a></div>--%>


        <%--</div>--%>


        <!--完成 end-->
    </div>
</div>

<!--middle end-->

<div class="foot">
    <p>
        火车订票版权
        <br/>
        北大青鸟万伟杰郑杜强所有
    </p>
</div>

</body>

<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/zhuce.js"></script>
<script type="text/javascript">
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
    });
            $(function(){
                var check=false;
                var path=$("#path").val();
                $("#sjhm").blur(function(){
                    var cellphonenumber=$("#sjhm").val();
                    var span=$("#sjhm").next();
                    var json={"info":"findCellPhoneNumber","cellphonenumber":cellphonenumber};
                    $.ajax({
                        url:path+"/userServlet",
                        type:"post",
                        data:json,
                        dataType:"text",
                        success:function(data){
                            if(data=="yes"){
                                if(cellphonenumber==null || cellphonenumber==""){
                                    span.html("手机号不能为空");
                                    span.removeClass("green");
                                    span.addClass("red");
                                    check = false;
                                }else{
                                    span.html("该手机号可使用");
                                    span.removeClass("green");
                                    span.addClass("green");
                                    check = true;
                                }
                            }else{
                                span.html("该手机号被占用");
                                span.removeClass("green");
                                span.addClass("red");
                                check = false;
                            }
                        },
                        error:function(){
                            alert("后台出现异常请联系管理员!")
                        }
                    })
                })
            });
    $(function(){
        var check=false;
        var path=$("#path").val();
        $("#sfzhm").blur(function(){
            var identityCard =$("#sfzhm").val();
            var span1=$("#sfzhm").next();
            var json={"info":"findIdentityCard","identityCard":identityCard};
            $.ajax({
                url:path+"/userServlet",
                type:"post",
                data:json,
                dataType:"text",
                success:function(data){
                    if(data=="y"){
                        if(identityCard==null || identityCard==""){
                            span1.html("身份证号码不能为空");
                            span1.removeClass("green");
                            span1.addClass("red");
                            check = false;
                        }else{
                            span1.html("该身份证号码可以使用");
                            span1.removeClass("green");
                            span1.addClass("green");
                            check = true;
                        }
                    }else{
                        span1.html("该身份证号码已被占用");
                        span1.removeClass("green");
                        span1.addClass("red");
                        check = false;
                    }
                },
                error:function(){
                    alert("后台出现异常请联系管理员!")
                }
            })
        })
    });
</script>
</html>
