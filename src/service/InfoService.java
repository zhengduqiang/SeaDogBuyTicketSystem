package service;

import dao.InfoDao;
import entity.cityname;
import entity.county;
import entity.info;
import entity.province;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by 12789 on 2019/1/16.
 */
public class InfoService {
    private InfoDao dao=new InfoDao();
    public List<info> all(province pr, cityname ci, county co){
        List<info> list=null;
        try {
            list=dao.all(pr,ci,co);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
