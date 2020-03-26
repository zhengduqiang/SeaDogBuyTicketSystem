package servlet;

import entity.userName;
import service.userService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;

/**
 * Created by 12789 on 2019/1/12.
 */
@WebServlet(name = "userServlet",value = "/userServlet")
public class userServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String info=request.getParameter("info");
        if(info==null){
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else{
            if(info.equals("login")){
                Login(request,response);
            }else if(info.equals("add")){
                try {
                    add(request,response);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
           }else if(info.equals("findCellPhoneNumber")){
                findCellPhoneNumber(request,response);
            }else if(info.equals("findIdentityCard")){
                findIdentityCard(request,response);
            }
        }
    }

    private void findIdentityCard(HttpServletRequest request, HttpServletResponse response) throws IOException {
        userName us=new userName();
        userService service=new userService();
        String identityCard=request.getParameter("identityCard");
        us.setCellphonenumber(identityCard);
        int count=service.findIdentityCard(identityCard);
        String  message="y";
        PrintWriter writer = response.getWriter();
        if(count!=0){
            message="n";
        }
        writer.print(message);
        writer.flush();
        writer.close();
    }

    private void findCellPhoneNumber(HttpServletRequest request, HttpServletResponse response) throws IOException {
        userName us=new userName();
        userService service=new userService();
        String cellphonenumber=request.getParameter("cellphonenumber");
        us.setCellphonenumber(cellphonenumber);
        int count=service.findCellPhoneNumber(cellphonenumber);
        String  message="yes";
        PrintWriter writer = response.getWriter();
        if(count!=0){
            message="no";
        }
        writer.print(message);
        writer.flush();
        writer.close();
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
        String zsxm=request.getParameter("zsxm");
        String name=request.getParameter("name");
       String gdhm=request.getParameter("gdhm");
        String sfzhm=request.getParameter("sfzhm");
        String pw=request.getParameter("pw");
        String xb=request.getParameter("xb");
        String data=request.getParameter("data");
        String sjhm=request.getParameter("sjhm");
        String dzyx=request.getParameter("dzyx");
        String zjlx=request.getParameter("zjlx");
        String what=request.getParameter("what");
        String mbda=request.getParameter("mbda");
        userName us=new userName();
        us.setUsername(name);
        us.setPassword(pw);
        us.setSex(xb);
        us.setCellphonenumber(sjhm);
        us.setDateOfbirth(data);
        us.setEmailAddress(dzyx);
        us.setCertificateType(zjlx);
        us.setPasswordWhat(what);
        us.setPasswordAnswer(mbda);
        us.setName(zsxm);
        us.setFixationphone(gdhm);
        us.setIdentityCard(sfzhm);
        us.setCreditPeople(0);
        us.setUserlevel(0);
        us.setUserjf(0);
        us.setMoney(0.0);
        userService service=new userService();
        PrintWriter writer = response.getWriter();
        int count=service.add(us);
        if (count == 1) {
            writer.print("<script type='text/javaScript'>");
            writer.print("alert('注册成功');");
            writer.print(" window.location='login.jsp';");
            writer.print("</script>");
            writer.flush();
            writer.close();
        } else {
            writer.print("<script type='text/javaScript'>");
            writer.print("alert('注册失败');");
            writer.print(" window.location='addUserName.jsp';");
            writer.print("</script>");
            writer.flush();
            writer.close();
        }
    }

    private void Login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        userName us=new userName();
        us.setCellphonenumber(username);
        us.setPassword(password);
        userService service=new userService();
        userName user = service.Login(us);
        if(user!=null){
            //将用户添加到session作用域中，并重定向到index页面
            request.getSession().setAttribute("user",user);
            request.setAttribute("message","登录成功");
           request.getRequestDispatcher("chaXunLieBiao.jsp").forward(request,response);
        }else{
            //若用户不存在，添加提示信息，并转发到登录页面
            request.setAttribute("message","登录失败");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
