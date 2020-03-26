package servlet;

import entity.trainnumberinfo;
import service.trainumberinfoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by asus on 2019/1/16.
 */
@WebServlet(name = "trainumberinfoServlet", value = "/trainumberinfoServlet")
public class trainumberinfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符编码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String info = request.getParameter("info");
        if (info.equals("piaojiachaxun")) {
            piaojiachaxun(request, response);
        } else if (info.equals("yupiaochaxun")) {
            yupiaochaxun(request, response);
        }
    }

    /**
     * 查询票价
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void piaojiachaxun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pref_noapply = Integer.parseInt(request.getParameter("pref_noapply"));
        int dd_noapply = Integer.parseInt(request.getParameter("dd_noapply"));
        String cfr = request.getParameter("cfr");
        trainumberinfoService service = new trainumberinfoService();
        List<trainnumberinfo> info2 = service.piaojiachaxun(pref_noapply, dd_noapply, cfr);
        request.setAttribute("trainnumber", info2);
        request.getRequestDispatcher("piaojiachaxun.jsp").forward(request, response);
    }

    /**
     * 查询余票数量
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void yupiaochaxun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pref_noapply = Integer.parseInt(request.getParameter("pref_noapply"));
        int dd_noapply = Integer.parseInt(request.getParameter("dd_noapply"));
        String cfr = request.getParameter("cfr");
        trainumberinfoService service = new trainumberinfoService();
        List<trainnumberinfo> info2 = service.yupiaochaxun(pref_noapply, dd_noapply, cfr);
        request.setAttribute("list", info2);
        request.getRequestDispatcher("yupiaochaxun.jsp").forward(request, response);
    }
}
