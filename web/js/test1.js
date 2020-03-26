/**
 * Created by 12789 on 2018/9/11.
 */
//var name="朕的江山";
//alert(typeof name)
//var str="德玛西亚";
//alert(typeof  str)
//var flag=true;
//alert(typeof flag)
//var num=3.14;
//alert(typeof num)
//var name="this is javaScript";
/*
 *name.Length:字符串的长度
 * name.charAt(index):返回指定位置的字符串
 * name.indexof(name.index);从指定位置开始第一次出现str的索引位置
 *name.substring(index1,index2):从index1开始截到index2之前的位置(含前不含后)
 *name.spLit(str):将字符串以str为分割线,分割成一个字符串的数组
 */
//var names=name.split("i");
//alert(names.length)
//var fruit=new Array(4);//创建一个长度为4的数组，数组长度可变
//var parm=new Array("1","2","3","4");//直接赋值
//fruit[0]="苹果";
//fruit[1]="香蕉";
//fruit[2]="橙子";
//fruit[3]="西瓜";
//for(var i=0; i<fruit.length;i++){//遍历对象
//    //document.write(fruit[i]+"<br/>")
//    alert(fruit[i])
//}
//for(var i in fruit){//遍历非空索引
//    document.write(fruit[i]+"<br/>")
//}
//var name1=fruit.join("-");//join方法把数组元素分割成一个字符串用-分割
//alert(name1);
//fruit.sort();//根据26个字母排序升序
//var number=fruit.push("波罗蜜");//向数组的最后添加一个元素，并返回长度
//alert(number);

//alert();直接弹出一个消息框
/*
 *只有一个参数的情况
 * 直接点击确定，返回空字符串
 * 直接点击取消，返回null
 * 两个参数的情况
 * 直接点击确定，返回默认值
 * 点击取消，返回null
 * 获取用户和的选择：确定和取消
 * 确定返回true取消返回false
 */
//var str=confirm("是否退出");
//alert(str);
/*
 pareseInt("str")将字符串转换为数字
 */
/*var str="3.14";
 var num=parseFloat(str);
 var flag=isNaN(str);
 alert(flag);*/
//function showInfo(){
 //   var num=prompt("请输入第一个参数");
    //num=parseInt(num)
    //if(num!=null){
//    //    num2=parseInt(num2)
    //    if(num2!=null){
 //           var choose=prompt("请输入运算符号");
    //        switch (choose){
    //            case "+":
    //                var numbers=num+num2;
    //                break;
    //            case "-":
    //                var numbers=num-num2
    //                break;
    //            case "*":
    //                var numbers=num*num2;
    //                break;
    //            case "/":
    //                var numbers=num/num2;
    //                break;
    //        }
 //           alert("两则运算结果为:"+num+choose+num2+"="+eval(num+choose+num2))
    //   }
   // }

//}
function  showResult() {
    var num=prompt("请输入考试的科目数量");
    if(isNaN(num)){
        alert("您输入的不是合法数字")
    }else{
        var index=num.indexOf(".");
        if(index==-1){//表示没有
            var sum = 0;
            for (var i = 0; i <num; i++) {
                var flag = false;
                var result = prompt("请输入第" + (i+1) + "门科目的考试成绩")
                if (result >= 0 && !isNaN(result)) {
                    sum+=parseInt(result);
                } else {
                    flag = true;
                    break;
                }
        }if(flag){
                alert("您输入的不是合法有效成绩,退出程序");
            }else{
                alert(num+"门科目的总成绩为:"+sum);
            }
        }else{
            alert("你输入的不是合法正整数");
        }

    }
}
