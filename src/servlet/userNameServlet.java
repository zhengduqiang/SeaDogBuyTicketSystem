package servlet;

import entity.userName;
import service.userNameService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by asus on 2019/1/15.
 */
@WebServlet(name = "userNameServlet", value = "/userNameServlet")
public class userNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符编码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String info = request.getParameter("info");
        if (info.equals("userName")) {
            forgetThePassword(request, response);
        } else if (info.equals("GeRenXinXi")) {
            chaXunGeRenXinXi(request, response);
        } else if (info.equals("updateGeRenXinXi")) {
            updateGeRenXinXi(request, response);
        } else if (info.equals("updatePassword")) {
            updatePassword(request, response);
        }
    }


    /**
     * 找回密码查询功能
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void forgetThePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userNameService service = new userNameService();
        userName userName = new userName();
        String yhm = request.getParameter("userName");
        String sfzhm = request.getParameter("sfzhm");
        String mbwt = request.getParameter("mbwt");
        String mbda = request.getParameter("mbda");
        String zsxm = request.getParameter("zsxm");
        String zjlx = request.getParameter("zjlx");
        String srxmm = request.getParameter("srxmm");
        userName.setUsername(yhm);
        userName.setIdentityCard(sfzhm);
        userName.setPasswordWhat(mbwt);
        userName.setPasswordAnswer(mbda);
        userName.setPassword(srxmm);
        userName.setCertificateType(zjlx);
        userName.setName(zsxm);
        int count = service.forgetThePassword(userName);
        PrintWriter write = response.getWriter();
        if (count == 1) {
            int i = service.updateForgetThePassword(srxmm, sfzhm);
            if (i == 1) {//找回密码成功
                write.print("<script type='text/javascript'>");
                write.print("alert('根据您输入找回密码的信息，信息通过验证，找回密码成功正在跳转登录页面');");
                write.print("window.location='login.jsp';");
                write.print("</script>");
                write.flush();
                write.close();
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("addUserName.jsp").forward(request, response);
            }
        } else {
            write.print("<script type='text/javascript'>");
            write.print("alert('根据您输入找回密码的信息，信息不属实未通过，找回密码失败');");
            write.print("window.location='forgetThePassword.jsp';");
            write.print("</script>");
            write.flush();
            write.close();
        }
    }

    /**
     * 查询个人信息
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void chaXunGeRenXinXi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userNameService service = new userNameService();
        userName list = service.chaXunGeRenXinXi("13879488582");
        userName userName = new userName();
        request.setAttribute("user", list);
        request.getRequestDispatcher("personalInformation.jsp").forward(request, response);
    }

    /**
     * 修改联系方式
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void updateGeRenXinXi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userNameService service = new userNameService();
        userName userName = new userName();
        String sjh = request.getParameter("sjh");
        String gddh = request.getParameter("gddh");
        String yx = request.getParameter("yx");
        userName.setCellphonenumber(sjh);
        userName.setFixationphone(gddh);
        userName.setEmailAddress(yx);
        userName.setIdentityCard("362002200110092210");
        int i = service.updateXunGeRenXinXi(userName);
        PrintWriter write = response.getWriter();
        if (i == 1) {
            write.print("<script type='text/javascript'>");
            write.print("alert('修改联系方式成功');");
            write.print("window.location='chaXunLieBiao.jsp';");
            write.print("</script>");
            write.flush();
            write.close();
        }
    }

    /**
     * 修改密码
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void updatePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userNameService service = new userNameService();
        userName userName = new userName();
        String xmm = request.getParameter("xmm");
        String sjh = request.getParameter("sjhm");
        String jmm = request.getParameter("jmm");
        int i = service.updatePassword(xmm, sjh, jmm);
        PrintWriter write = response.getWriter();
        if (i == 1) {
            write.print("<script type='text/javascript'>");
            write.print("alert('修改密码成功，即将重新登录');");
            write.print("window.location='login.jsp';");
            write.print("</script>");
            write.flush();
            write.close();
        } else {
            write.print("<script type='text/javascript'>");
            write.print("alert('您输入的旧密码不正确,修改密码失败');");
            write.print("window.location='changePassword.jsp';");
            write.print("</script>");
            write.flush();
            write.close();
        }
    }
}
