package service;

import dao.ordersInfoDao;
import entity.ordersinfo;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by asus on 2019/1/18.
 */
public class ordersInfoService {
    private ordersInfoDao dao = new ordersInfoDao();

    public List<ordersinfo> chaXunChePiaoXinXi(ordersinfo info) {
        List<ordersinfo> list = null;
        try {
            list = dao.chaXunChePiaoXinXi(info);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int tuiPiao(String name, String orderId) {
        int i = -1;
        i = dao.tuiPiao(name, orderId);
        return i;
    }

    public int tuiPiaoJianPiao(String zhi1,  String zhi3) {
        int i = -1;
        i = dao.tuiPiaoJianPiao(zhi1,  zhi3);
        return i;
    }
}
