/**
 * Created by 12789 on 2018/9/13.
 */
function emailyz(email){
    if(email==""){
        alert("邮箱不能为空!")
    }else if(email.indexOf("@")==-1 && email.indexOf(".")==-1){
        alert("邮箱地址必须包含@和.")
    }else{
        var num=email.indexOf("@",0);
        var name=email.substring(0,num)
        alert("邮箱地址正确,邮箱名称是:"+name)
    }
}
