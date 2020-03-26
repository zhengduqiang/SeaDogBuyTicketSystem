package dao;

import entity.cityname;
import entity.county;
import entity.info;
import entity.province;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 12789 on 2019/1/16.
 */
public class InfoDao extends BaseDao {
    public List<info> all(province po, cityname ci, county co) throws SQLException {
        List<info> list=null;
        String sql="SELECT i.* FROM info AS i ,province AS p,cityname AS c,county AS co\n" +
                "WHERE i.`provinceid`=p.`id`\n" +
                "AND i.`cityId`=c.`id` AND c.`provinceId`=p.`id`\n" +
                "AND i.`countyId`=co.`id` AND co.`cityId`=c.`id`\n" +
                "AND p.`provinceName`=? AND c.`cityName`=? AND co.`countyName`=?";
        List parm=new ArrayList();
        parm.add(po.getProvinceName());
        parm.add(ci.getCityName());
        parm.add(co.getCountyName());
        ResultSet rs = executeQuery(sql, parm);
        while(rs.next()){
            info in=new info();
            in.setId(rs.getInt("id"));
            in.setInfoName(rs.getString("infoName"));
            in.setAddress(rs.getString("address"));
            in.setTime(rs.getString("time"));
            in.setInfoNum(rs.getInt("infoNum"));
            in.setProvinceid(rs.getInt("provinceid"));
            in.setCityId(rs.getInt("cityId"));
            in.setCountyId(rs.getInt("countyId"));
            list.add(in);
        }
        return list;
    }
}
