package service;

import dao.userNameDao;
import entity.userName;

import java.sql.SQLException;

/**
 * Created by asus on 2019/1/15.
 */
public class userNameService {
    private userNameDao dao = new userNameDao();

    public int forgetThePassword(userName userName) {
        int count = -1;
        try {
            count = dao.forgetThePassword(userName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    /**
     * 找回密码操作
     *
     * @param xmm
     * @param sfzhm
     * @return
     */
    public int updateForgetThePassword(String xmm, String sfzhm) {
        int i = -1;
        try {
            i = dao.updateForgetThePassword(xmm, sfzhm);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     * 查询个人信息
     *
     * @param Phone
     * @return
     */
    public userName chaXunGeRenXinXi(String Phone) {
        userName userName = null;
        try {
            userName = dao.chaXunGeRenXinXi(Phone);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userName;
    }

    /**
     * 修改个人信息
     *
     * @param userName
     * @return
     */
    public int updateXunGeRenXinXi(userName userName) {
        int count = -1;
        try {
            count = dao.updateXunGeRenXinXi(userName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    /**
     * 修改密码
     *
     * @param password
     * @param cellPhoneNumber
     * @return
     */
    public int updatePassword(String password, String cellPhoneNumber, String password2) {
        int count = -1;
        try {
            count = dao.updatePassword(password, cellPhoneNumber, password2);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
}
