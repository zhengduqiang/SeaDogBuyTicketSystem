package dao;

import entity.userName;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by asus on 2019/1/15.
 */
public class userNameDao extends BaseDao {
    /**
     * 找回密码查询
     *
     * @param userName
     * @return
     * @throws SQLException
     */
    public int forgetThePassword(userName userName) throws SQLException {
        //编写sql语句
        String sql = "SELECT COUNT(0) as count FROM UserName WHERE UserName =? AND IdentityCard=?  AND NAME=? AND CertificateType=? AND PasswordWhat=? OR PasswordAnswer=?";
        //构造参数
        Object[] params = {userName.getUsername(), userName.getIdentityCard(), userName.getName(), userName.getCertificateType(), userName.getPasswordWhat(), userName.getPasswordAnswer()};
        //拼接参数
        ResultSet resultSet = executeQuery(sql, params);
        int count = 0;
        if (resultSet.next()) {
            count = resultSet.getInt("count");
        }
        return count;
    }

    /**
     * 找回密码
     *
     * @param xmm
     * @param sfzhm
     * @return
     */
    public int updateForgetThePassword(String xmm, String sfzhm) throws SQLException {
        String sql = "UPDATE username SET PASSWORD = ? WHERE IdentityCard=?";
        List params = new ArrayList();
        params.add(xmm);
        params.add(sfzhm);
        //拼接参数
        int i = executeUpdate(sql, params);
        return i;
    }

    /**
     * 查询个人信息
     *
     * @return
     */
    public userName chaXunGeRenXinXi(String Phone) throws SQLException {
        String sql = "SELECT * FROM username WHERE CellPhoneNumber= ?";
        List params = new ArrayList();
        params.add(Phone);
        ResultSet rs = executeQuery(sql, params);
        userName userName = null;
        if (rs.next()) {
            userName = new userName();
            userName.setName(rs.getString("Name"));
            userName.setPassword(rs.getString("Password"));
            userName.setUsername(rs.getString("UserName"));
            userName.setSex(rs.getString("Sex"));
            userName.setDateOfbirth(rs.getString("dateOfBirth"));
            userName.setFixationphone(rs.getString("FixationPhone"));
            userName.setCellphonenumber(rs.getString("CellPhoneNumber"));
            userName.setEmailAddress(rs.getString("EmailAddress"));
            userName.setCertificateType(rs.getString("CertificateType"));
            userName.setIdentityCard(rs.getString("IdentityCard"));
            userName.setPasswordWhat(rs.getString("PasswordWhat"));
            userName.setPasswordAnswer(rs.getString("PasswordAnswer"));
            userName.setCreditPeople(rs.getInt("CreditPeople"));
            userName.setUserlevel(rs.getInt("Userlevel"));
            userName.setUserjf(rs.getInt("userjf"));
            userName.setMoney(rs.getDouble("money"));
        }
        return userName;
    }

    /**
     * 修改个人信息
     *
     * @param userName
     * @return
     * @throws SQLException
     */
    public int updateXunGeRenXinXi(userName userName) throws SQLException {
        String sql = "UPDATE username SET FixationPhone=?,CellPhoneNumber=?,EmailAddress=? WHERE IdentityCard=?";
        Object[] params = {userName.getFixationphone(), userName.getCellphonenumber(), userName.getEmailAddress(), userName.getIdentityCard()};
        int i = executeUpdate(sql, params);
        return i;
    }

    /**
     * 修改密码
     *
     * @param password
     * @param cellPhoneNumber
     * @return
     * @throws SQLException
     */
    public int updatePassword(String password, String cellPhoneNumber, String password2) throws SQLException {
        String sql = "UPDATE username SET PASSWORD = ? WHERE CellPhoneNumber=? AND PASSWORD=?";
        Object[] params = {password, cellPhoneNumber, password2};
        int i = executeUpdate(sql, params);
        return i;
    }
}
