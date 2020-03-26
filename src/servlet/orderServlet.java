package servlet;

import entity.ordersinfo;
import service.OrderService;
import service.TrainNumService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * Created by 12789 on 2019/1/18.
 */
@WebServlet(name = "orderServlet",value = "/orderServlet")
public class orderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String info=request.getParameter("info");
        if(info!=null){
            if(info.equals("dp")){
                try {
                    add(request,response);
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException, ServletException {
        String trainno=request.getParameter("trainno");
        int sta=Integer.valueOf(request.getParameter("sta"));
        String zw=request.getParameter("zw");
        String name=request.getParameter("name");
        String pz=request.getParameter("pz");
        String OrdersDate=request.getParameter("OrdersDate");
        String departDate=request.getParameter("departDate");
        String LeaveCity=request.getParameter("LeaveCity");
        String DestinationCity=request.getParameter("DestinationCity");
        String departTime=request.getParameter("departTime");
        String arriveTime=request.getParameter("arriveTime");
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
        ordersinfo info=new ordersinfo();
        if(zw.equals("商务座") || zw=="商务座"){
            info.setTicketPriceMoney(56);
        }
        if(zw.equals("一等座") || zw=="一等座"){
            info.setTicketPriceMoney(156);
        }
        if(zw.equals("二等座") || zw=="二等座"){
            info.setTicketPriceMoney(100);
        }
        if(zw.equals("硬座") || zw=="硬座"){
            info.setTicketPriceMoney(45);
        }
        if(zw.equals("软座") || zw=="软座"){
            info.setTicketPriceMoney(200);
        }
        if(zw.equals("软卧") || zw=="软卧"){
            info.setTicketPriceMoney(256);
        }
        if(zw.equals("无座") || zw=="无座"){
            info.setTicketPriceMoney(45);
        }
        info.setPaymentStates(sta);
        info.setTrainNo(trainno);
        info.setName(name);
        info.setArriveTime(arriveTime);
        info.setSeat(zw);
       info.setDepartDate(departDate);
        info.setDestinationCity(DestinationCity);
        info.setOrdersDate(OrdersDate);
        info.setTicketSeed(pz);
        info.setLeaveCity(LeaveCity);
        info.setDepartTime(departTime);
        OrderService service=new OrderService();
        int count=service.add(info);
        PrintWriter writer = response.getWriter();
        if (count == 1) {
            TrainNumService service1=new TrainNumService();
            if(zw.equals("商务座") || zw=="商务座"){
                service1.BusinessClassSurplusTicket(trainno);
            }
            if(zw.equals("一等座") || zw=="一等座"){
                service1.FirstClassMoney(trainno);
            }
            if(zw.equals("二等座") || zw=="二等座"){
                service1.SecondClassSurplusTicket(trainno);
            }
            if(zw.equals("硬座") || zw=="硬座"){
                service1.HardSeatSurplusTicket(trainno);
            }
            if(zw.equals("软座") || zw=="软座"){
                service1.BusinessClassSurplusTicket(trainno);
            }
            if(zw.equals("软卧") || zw=="软卧"){
                service1.MilDlieSurplusSurplusTicket(trainno);
            }
            if(zw.equals("无座") || zw=="无座"){
                service1.NotSeatSurplusTicket(trainno);
            }
            request.setAttribute("Money",info.getTicketPriceMoney());
            writer.print("<script type='text/javaScript'>");
           request.getRequestDispatcher("zhiFuChengGong.jsp").forward(request,response);
            writer.print("</script>");
            writer.flush();
            writer.close();
        } else {
            writer.print("<script type='text/javaScript'>");
            writer.print("alert('订票失败');");
            writer.print(" window.location='zhengCeXuanZe.jsp';");
            writer.print("</script>");
            writer.flush();
            writer.close();
        }
    }
}
