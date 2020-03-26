package service;

import dao.orderInfoDao;
import entity.ordersinfo;

/**
 * Created by 12789 on 2019/1/18.
 */
public class OrderService {
    private orderInfoDao dao=new orderInfoDao();
    public int add(ordersinfo info){
      int  count=dao.add(info);
        return count;
    }

}
