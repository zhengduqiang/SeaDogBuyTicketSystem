package service;

import dao.userDao;
import entity.userName;

import java.sql.SQLException;

/**
 * Created by 12789 on 2019/1/12.
 */
public class userService {
    private userDao dao=new userDao();
    public userName Login(userName us){
        userName us1=null;
        try {
            us1=dao.Login(us);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return us1;
    }
    public int add(userName us){
        int i=dao.add(us);
        return i;
    }
    public int findCellPhoneNumber(String CellPhoneNumber){
        int count=0;
        try {
             count=dao.findCellPhoneNumber(CellPhoneNumber);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
    public int findIdentityCard(String IdentityCard){
        int count=0;
        try {
             count=dao.findIdentityCard(IdentityCard);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
}
