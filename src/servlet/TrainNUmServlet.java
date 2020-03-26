package servlet;

import entity.trainnumberinfo;
import service.TrainNumService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by 12789 on 2019/1/16.
 */
@WebServlet(name = "TrainNUmServlet", value = "/TrainNUmServlet")
public class TrainNUmServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String info = request.getParameter("info");
        if (info != null) {
            if (info.equals("findall")) {
                try {
                    findall(request, response);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            } else if (info.equals("findid")) {
                findid(request, response);
            }

        }
    }

    private void findid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        TrainNumService service = new TrainNumService();
        trainnumberinfo info = service.findid(id);
        request.setAttribute("Info", info);
        request.getRequestDispatcher("zhengCeXuanZe.jsp").forward(request, response);
    }

//    private void findg(HttpServletRequest request, HttpServletResponse response) throws ParseException, ServletException, IOException {
//        String g=request.getParameter("g");
//        int pref=Integer.valueOf(request.getParameter("pref"));
//        int dd=Integer.valueOf(request.getParameter("dd"));
//        String data=request.getParameter("data");
//        trainnumberinfo info=new trainnumberinfo();
//        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
//        info.setLeaveCity(pref);
//        info.setDestinationCity(dd);
//        info.setDepartDate(format.parse(data));
//        info.setTrainNo(g);
//        TrainNumService service=new TrainNumService();
//        List<trainnumberinfo> list=service.findall(info);
//        request.setAttribute("List",list);
//        request.getRequestDispatcher("chaXunLieBiao.jsp").forward(request,response);
//    }

    private void findall(HttpServletRequest request, HttpServletResponse response) throws ParseException, ServletException, IOException {
        int pref = Integer.valueOf(request.getParameter("pref"));
        int dd = Integer.valueOf(request.getParameter("dd"));
        String data = request.getParameter("data");
        String g = request.getParameter("g");
        String d = request.getParameter("d");
        String z = request.getParameter("z");
        String t = request.getParameter("t");
        String k = request.getParameter("k");
        trainnumberinfo info = new trainnumberinfo();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        if (g != null) {
            info.setTrainNo(g);
        }
        if (d != null) {
            info.setTrainNo(d);
        }
        if (z != null) {
            info.setTrainNo(z);
        }
        if (t != null) {
            info.setTrainNo(t);
        }
        if (k != null) {
            info.setTrainNo(k);
        }
        info.setLeaveCity(pref);
        info.setDestinationCity(dd);
        info.setDepartDate(format.parse(data));
        TrainNumService service = new TrainNumService();
        List<trainnumberinfo> list = service.findall(info);
        request.setAttribute("List", list);
        request.getRequestDispatcher("chaXunLieBiao.jsp").forward(request, response);
    }
}
