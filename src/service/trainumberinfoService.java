package service;

import dao.trainumberinfoDao;
import entity.trainnumberinfo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by asus on 2019/1/16.
 */
public class trainumberinfoService {
    private trainumberinfoDao dao = new trainumberinfoDao();

    /**
     * 查询票价
     *
     * @param LeaveCity
     * @param DestinationCity
     * @param DepartDate
     * @return
     */
    public List<trainnumberinfo> piaojiachaxun(int LeaveCity, int DestinationCity, String DepartDate) {
        List<trainnumberinfo> list = new ArrayList<>();
        try {
            list = dao.piaojiachaxun(LeaveCity, DestinationCity, DepartDate);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<trainnumberinfo> yupiaochaxun(int LeaveCity, int DestinationCity, String DepartDate) {
        List<trainnumberinfo> list = new ArrayList<>();
        try {
            list = dao.piaojiachaxun(LeaveCity, DestinationCity, DepartDate);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

}
