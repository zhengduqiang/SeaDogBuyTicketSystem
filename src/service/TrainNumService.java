package service;

import dao.TrainNumDao;
import entity.trainnumberinfo;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by 12789 on 2019/1/16.
 */
public class TrainNumService {
    private TrainNumDao dao=new TrainNumDao();
    public List<trainnumberinfo> findall(trainnumberinfo tr){
        List<trainnumberinfo> list=null;
        try {
            list=dao.findall(tr);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public trainnumberinfo findid(String id){
       trainnumberinfo info=null;
        try {
            info=dao.findid(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return info;
    }
    public int BusinessClassSurplusTicket(String id){
        int count=dao.BusinessClassSurplusTicket(id);
        return count;
    }
    public int FirstClassMoney(String id){
        int count=dao.FirstClassMoney(id);
        return count;
    }
    public int SecondClassSurplusTicket(String id){
        int count=dao.SecondClassSurplusTicket(id);
        return count;
    }
    public int HardSeatSurplusTicket(String id){
        int count=dao.HardSeatSurplusTicket(id);
        return count;
    }
    public int MilDlieSurplusSurplusTicket(String id){
        int count=dao.MilDlieSurplusSurplusTicket(id);
        return count;
    }
    public int NotSeatSurplusTicket(String id){
        int count=dao.NotSeatSurplusTicket(id);
        return count;
    }
    public int MildSeatMoneySurplusTicket(String id){
        int count=dao.MildSeatMoneySurplusTicket(id);
        return count;
    }
}
