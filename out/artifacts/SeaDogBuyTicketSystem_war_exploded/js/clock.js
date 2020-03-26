/**
 * Created by 12789 on 2018/9/18.
 */
function  showTime(){
    //获取当前系统时间
    var now=new Date();
    //获取小时数
    var hour =now.getHours();
    //获取分钟数
    var minut=now.getMinutes();
    //获取秒数
    var second=now.getSeconds();
    //将时间拼接起来
    var time=hour+":"+minut+":"+second;
    //显示到桌面上,需要获取到和h1标签元素
    var h1=document.getElementById("time")
    h1.innerHTML="现在是:"+time;
}
function random1(){
    //获取随机数
    var num=Math.random()*10;
    //向上取整
    var num1=Math.ceil(num);
    alert(num1);
}
//setTimeout("函数名",毫秒)延迟调用
//setinterval("函数名",毫秒数)间隔调用
//clearTimeout(传入定时函数产生的定时器)清除函数
// clearInterval()//停止
function showtimer(){
    var now=new Date();//获取系统时间
    var year=now.getFullYear();//获取年
    var month=now.getMonth()+1;//获取月份
    var date=now.getDate();//获取天数1-31
    var day=now.getDay();//获取一周中的第几天
    var hour =now.getHours();//获取小时数0-23
    var sjd="AM"
    if(hour>12){
        hour-=12
        sjd="pm"
    }
    var minut=now.getMinutes();//获取分钟数
    var second=now.getSeconds();//获取秒数
    var monday=""
    switch(day){
        case 0:
            monday="星期天";
            break;
        case 1:
            monday="星期一";
            break;
        case 2:
            monday="星期二";
            break;
        case 3:
            monday="星期三";
            break;
        case 4:
            monday="星期四";
            break;
        case 5:
            monday="星期五";
            break;
        case 6:
            monday="星期六";
            break;
    }
    var time=year+":"+month+":"+date+":"+hour+":"+minut+":"+second+"  "+sjd+"  "+monday;
    var h1=document.getElementById("time")
    h1.innerHTML="现在是北京时间:"+time;
}
var time;
function tm(){
    time=setInterval("showtimer()",1000)
}
function clearTimer(){
    clearInterval(time);
}

