package dao;

import entity.ordersinfo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by asus on 2019/1/18.
 */
public class ordersInfoDao extends BaseDao {
    public List<ordersinfo> chaXunChePiaoXinXi(ordersinfo info) throws SQLException {
        List<ordersinfo> list = new ArrayList<>();
        List params = new ArrayList();
        String sql = "SELECT * FROM ordersinfo WHERE  `name`=? and 1=1 ";
        params.add(info.getName());
        if (info.getDepartDate() != null && !info.getDepartDate().equals("")) {//判断网点名称是否为空
            sql += " AND departDate = ? ";
            params.add(info.getDepartDate());
        }
        if (info.getTrainNo() != null && !info.getTrainNo().equals("")) {//判断网点名称是否为空
            sql += " AND trainNo = ? ";
            params.add(info.getTrainNo());
        }
        if (info.getTrainNo() != null && !info.getTrainNo().equals("") && info.getDepartDate() != null && !info.getDepartDate().equals("")) {
            sql += " ORDER BY departDate DESC ";
        } else if (info.getDepartDate() != null && !info.getDepartDate().equals("")) {
            sql += " ORDER BY departDate DESC ";
        } else if (info.getTrainNo() != null && !info.getTrainNo().equals("")) {
            sql += " ORDER BY departDate DESC ";
        }

        ResultSet rs = executeQuery(sql, params);
        while (rs.next()) {
            ordersinfo info2 = new ordersinfo();
            info2.setOrderId(rs.getInt("orderId"));
            info2.setTrainNo(rs.getString("trainNo"));
            info2.setOrdersDate(rs.getString("OrdersDate"));
            info2.setLeaveCity(rs.getString("LeaveCity"));
            info2.setDestinationCity(rs.getString("DestinationCity"));
            info2.setDepartDate(rs.getString("departDate"));
            info2.setDepartTime(rs.getString("departTime"));
            info2.setArriveTime(rs.getString("ArriveTime"));
            info2.setLastTime(rs.getString("LastTime"));
            info2.setSeat(rs.getString("Seat"));
            info2.setTicketPriceMoney(rs.getInt("TicketPriceMoney"));
            info2.setTicketSeed(rs.getString("TicketSeed"));
            info2.setBoolTickeNumber(rs.getInt("BoolTickeNumber"));
            info2.setPaymentStates(rs.getInt("PaymentStates"));
            info2.setName(rs.getString("Name"));
            info2.setUserName(rs.getString("UserName"));
            list.add(info2);
        }
        return list;
    }

    public int tuiPiao(String name, String orderId) {
        String sql = "DELETE  FROM `ordersinfo` WHERE `name` = ? AND orderId = ? ";
        Object[] params = {name, orderId};
        int i = executeUpdate(sql, params);
        return i;
    }

    public int tuiPiaoJianPiao(String zw, String zhi3) {
        String sql = "UPDATE `trainnumberinfo` ";
        if (zw.equals("商务座")) {
            sql += "SET BusinessClassSurplusTicket = BusinessClassSurplusTicket + 1 WHERE trainNo=? ";
        } else if (zw.equals("一等座")) {
            sql += "SET FirstClassSurplusTicket = FirstClassSurplusTicket + 1 WHERE trainNo=? ";
        } else if (zw.equals("二等座")) {
            sql += "SET SecondClassSurplusTicket = SecondClassSurplusTicket + 1 WHERE trainNo=? ";
        } else if (zw.equals("软卧")) {
            sql += "SET MilDlieSurplusSurplusTicket = MilDlieSurplusSurplusTicket + 1 WHERE trainNo=? ";
        } else if (zw.equals("软座")) {
            sql += "SET MildSeatMoneySurplusTicket = MildSeatMoneySurplusTicket + 1 WHERE trainNo=? ";
        } else if (zw.equals("硬座")) {
            sql += "SET HardSeatSurplusTicket = HardSeatSurplusTicket + 1 WHERE trainNo=? ";
            zw = "HardSeatSurplusTicket";
        } else if (zw.equals("无座")) {
            sql += "SET NotSeatSurplusTicket = NotSeatSurplusTicket + 1 WHERE trainNo=? ";
        }
        Object[] params = {zhi3};
        int i = executeUpdate(sql, params);
        return i;
    }
}
