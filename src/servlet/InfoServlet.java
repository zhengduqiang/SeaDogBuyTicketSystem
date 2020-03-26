package servlet;

import entity.cityname;
import entity.county;
import entity.info;
import entity.province;
import service.InfoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by 12789 on 2019/1/16.
 */
@WebServlet(name = "InfoServlet",value = "/InfoServlet")
public class InfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String info=request.getParameter("info");
        if(info!=null){
            if(info.equals("all")){
                all(request,response);
            }
        }
    }

    private void all(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String prov=request.getParameter("prov");
         String city=request.getParameter("city");
         String dist=request.getParameter("dist");
        province pr=new province();
        cityname ci=new cityname();
        county co=new county();
        pr.setProvinceName(prov);
        ci.setCityName(city);
        co.setCountyName(dist);
        InfoService service=new InfoService();
        List<info> list=service.all(pr,ci,co);
        request.setAttribute("ListAg",list);
        request.getRequestDispatcher("agency.jsp").forward(request,response);
    }
}
