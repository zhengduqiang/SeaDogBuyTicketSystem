/**
 * Created by 12789 on 2018/9/11.
 */
var str=new Array("America","Greece","Britain","Canada","China","Egypt");
var count=0;
for(var i=0;i<str.length;i++){
    document.write(str[i]+"<br/>")
    if(str[i].indexOf("A",0)!=-1 || str[i].indexOf("a",0)!=-1){
       count++;
    }
}
document.write("共有"+count+"个包含A或a的字符串")



