package servlet;

import entity.ordersinfo;
import service.ordersInfoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by asus on 2019/1/18.
 */
@WebServlet(name = "irdersUnfiServlet", value = "/irdersUnfiServlet")
public class irdersUnfiServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符编码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String info = request.getParameter("info");
        if (info.equals("chaXunChePiaoXinXi")) {
            chaXunChePiaoXinXi(request, response);
        } else if (info.equals("tuiPiao")) {
            tuiPiao(request, response);
        } else if (info.equals("tuiPiaoJianPiao")) {
            tuiPiaoJianPiao(request, response);
        }
    }

    protected void chaXunChePiaoXinXi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String cch = request.getParameter("cch");
        String fcrq = request.getParameter("fcrq");
        ordersinfo info = new ordersinfo();
        info.setName(name);
        info.setTrainNo(cch);
        info.setDepartDate(fcrq);
        ordersInfoService service = new ordersInfoService();
        List<ordersinfo> list = service.chaXunChePiaoXinXi(info);
        request.setAttribute("info", list);
        request.getRequestDispatcher("dinDanLieBiao.jsp").forward(request, response);
    }

    protected void tuiPiao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        ordersInfoService service = new ordersInfoService();
        int i = service.tuiPiao(name, id);
        if (i == 1) {
            String zw = request.getParameter("zw");
            String cc = request.getParameter(("cc"));
            String zw2 = request.getParameter("zw");
            ordersInfoService service2 = new ordersInfoService();
            int i2 = service2.tuiPiaoJianPiao(zw,cc);
            PrintWriter write = response.getWriter();
            if (i2 == 1) {
                write.print("<script type='text/javascript'>");
                write.print("alert('退票成功，即将跳转到查询车票页面');");
                write.print("window.location='chaXunLieBiao.jsp';");
                write.print("</script>");
                write.flush();
                write.close();
            } else {
                write.print("<script type='text/javascript'>");
                write.print("alert('退票失败');");
                write.print("window.location='dinDanLieBiao.jsp';");
                write.print("</script>");
                write.flush();
                write.close();
            }
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    protected void tuiPiaoJianPiao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
