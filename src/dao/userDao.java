package dao;

import entity.userName;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 12789 on 2019/1/12.
 */
public class userDao extends BaseDao {
    public userName Login(userName us) throws SQLException {
        userName us1 = null;
        String sql = "select * from username where CellPhoneNumber=? and Password=? ";
        List list = new ArrayList();
        list.add(us.getCellphonenumber());
        list.add(us.getPassword());
        ResultSet rs = executeQuery(sql, list);
        if (rs.next()) {
            us1 = new userName();
            us1.setUserid(rs.getInt("UserId"));
            us1.setUsername(rs.getString("UserName"));
            us1.setPassword(rs.getString("Password"));
            us1.setName(rs.getString("Name"));
            us1.setSex(rs.getString("Sex"));
            us1.setDateOfbirth(rs.getString("dateOfBirth"));
            us1.setFixationphone(rs.getString("FixationPhone"));
            us1.setCellphonenumber(rs.getString("CellPhoneNumber"));
            us1.setEmailAddress(rs.getString("EmailAddress"));
            us1.setCertificateType(rs.getString("CertificateType"));
            us1.setIdentityCard(rs.getString("IdentityCard"));
            us1.setPasswordWhat(rs.getString("PasswordWhat"));
            us1.setPasswordAnswer(rs.getString("PasswordAnswer"));
            us1.setCreditPeople(rs.getShort("CreditPeople"));
            us1.setUserlevel(rs.getInt("Userlevel"));
            us1.setUserjf(rs.getInt("userjf"));
            us1.setMoney(rs.getDouble("money"));
        }
        return us1;
    }

    public int add(userName us) {
        String sql = "insert into username values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        List list = new ArrayList();
        list.add(us.getUserid());
        list.add(us.getUsername());
        list.add(us.getPassword());
        list.add(us.getName());
        list.add(us.getSex());
        list.add(us.getDateOfbirth());
        list.add(us.getFixationphone());
        list.add(us.getCellphonenumber());
        list.add(us.getEmailAddress());
        list.add(us.getCertificateType());
        list.add(us.getIdentityCard());
        list.add(us.getPasswordWhat());
        list.add(us.getPasswordAnswer());
        list.add(us.getCreditPeople());
        list.add(us.getUserlevel());
        list.add(us.getUserjf());
        list.add(us.getMoney());
        int i = executeUpdate(sql, list);
        return i;
    }

    public int findCellPhoneNumber(String CellPhoneNumber) throws SQLException {
        String sql = "select count(0) as count from username where CellPhoneNumber=?";
        List list = new ArrayList();
        list.add(CellPhoneNumber);
        ResultSet rs = executeQuery(sql, list);
        int count = 0;
        if (rs.next()) {
            count = rs.getInt("count");
        }
        closeAll(null, rs);
        return count;
    }

    public int findIdentityCard(String IdentityCard) throws SQLException {
        String sql = "select count(0) as count from username where IdentityCard=?";
        List list = new ArrayList();
        list.add(IdentityCard);
        ResultSet rs = executeQuery(sql, list);
        int count = 0;
        if (rs.next()) {
            count = rs.getInt("count");
        }
        closeAll(null, rs);
        return count;
    }
}
