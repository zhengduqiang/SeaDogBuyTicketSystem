package dao;

import entity.ordersinfo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 12789 on 2019/1/18.
 */
public class orderInfoDao extends BaseDao {
    public int add(ordersinfo info){
        String sql="insert into ordersinfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        List list=new ArrayList();
        list.add(info.getOrderId());
        list.add(info.getTrainNo());
        list.add(info.getOrdersDate());
        list.add(info.getLeaveCity());
        list.add(info.getDestinationCity());
        list.add(info.getDepartDate());
        list.add(info.getDepartTime());
        list.add(info.getArriveTime());
        list.add(info.getLastTime());
        list.add(info.getSeat());
        list.add(info.getTicketPriceMoney());
        list.add(info.getBoolTickeNumber());
        list.add(info.getPaymentStates());
        list.add(info.getTicketPriceMoney());
        list.add(info.getName());
        list.add(info.getUserName());
        int count=executeUpdate(sql,list);
        return count;
    }
}
