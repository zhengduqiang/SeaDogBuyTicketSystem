package dao;

import entity.trainnumberinfo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 12789 on 2019/1/16.
 */
public class TrainNumDao extends BaseDao {
    public List<trainnumberinfo> findall(trainnumberinfo tr) throws SQLException {
        List<trainnumberinfo> list=new ArrayList<>();
        List parm=new ArrayList();
//        String sql="SELECT t.* FROM trainnumberinfo AS t ,leavecityname AS l1 ,leavecityname AS l2 WHERE \n" +
        String sql="select t.* from trainnumberinfo as t,leavecityname as c,leavecityname as ci where t.leavecity=c.id and t.destinationcity=ci.id and t.leavecity = ? and t.destinationcity = ? and departdate=? ";
//                "t.`LeaveCity`=l1.`ID` AND t.`DestinationCity`=l2.`ID`\n" +
//                "AND t.LeaveCity = ? AND t.DestinationCity = ? AND DepartDate=? ";
        if(tr!=null){
            if(tr.getTrainNo()!=null){
                sql+=" and trainNo = ? ";
                parm.add(tr.getTrainNo());
            }
        }
        parm.add(tr.getLeaveCity());
        parm.add(tr.getDestinationCity());
        parm.add(tr.getDepartDate());
        ResultSet rs=executeQuery(sql,parm);
        while(rs.next()){
            trainnumberinfo info=new trainnumberinfo();
            info.setTrainNo(rs.getString("trainNo"));
            info.setLeaveCity(rs.getInt("LeaveCity"));
            info.setDestinationCity(rs.getInt("DestinationCity"));
            info.setDepartDate(rs.getDate("DepartDate"));
            info.setLeaveTime(rs.getString("LeaveTime"));
            info.setArriveTime(rs.getString("ArriveTime"));
            info.setBusinessClass(rs.getString("BusinessClass"));
            info.setBusinessClassMoney(rs.getDouble("BusinessClassMoney"));
            info.setBusinessClassSurplusTicket(rs.getInt("BusinessClassSurplusTicket"));
            info.setFirstClass(rs.getString("FirstClass"));
            info.setFirstClassMoney(rs.getDouble("FirstClassMoney"));
            info.setFirstClassSurplusTicket(rs.getInt("FirstClassSurplusTicket"));
            info.setSecondClass(rs.getString("SecondClass"));
            info.setSecondtClassMoney(rs.getDouble("SecondtClassMoney"));
            info.setFirstClassSurplusTicket(rs.getInt("SecondClassSurplusTicket"));
            info.setMildLie(rs.getString("MildLie"));
            info.setMildLieMoney(rs.getDouble("MildLieMoney"));
            info.setMilDlieSurplusSurplusTicket(rs.getInt("MilDlieSurplusSurplusTicket"));
            info.setMildMildSeat(rs.getString("MildMildSeat"));
            info.setMildSeatMoney(rs.getDouble("MildSeatMoney"));
            info.setMildSeatMoneySurplusTicket(rs.getInt("MildSeatMoneySurplusTicket"));
            info.setHardSeat(rs.getString("HardSeat"));
            info.setHardSeatMoney(rs.getDouble("HardSeatMoney"));
            info.setHardSeatSurplusTicket(rs.getInt("HardSeatSurplusTicket"));
            info.setNotSeat(rs.getString("NotSeat"));
            info.setNotSeatMoney(rs.getDouble("NotSeatMoney"));
            info.setHardSeatSurplusTicket(rs.getInt("NotSeatSurplusTicket"));
            info.setStationNoe(rs.getInt("stationNoe"));
            info.setStationTow(rs.getInt("stationTow"));
            list.add(info);
        }
        return list;
    }
    public trainnumberinfo findid(String id) throws SQLException {
        trainnumberinfo info=new trainnumberinfo();
        String sql="select * from trainnumberinfo where trainNo=?";
        List list=new ArrayList();
        list.add(id);
        ResultSet rs = executeQuery(sql, list);
        while(rs.next()){
            info.setTrainNo(rs.getString("trainNo"));
            info.setLeaveCity(rs.getInt("LeaveCity"));
            info.setDestinationCity(rs.getInt("DestinationCity"));
            info.setDepartDate(rs.getDate("DepartDate"));
            info.setLeaveTime(rs.getString("LeaveTime"));
            info.setArriveTime(rs.getString("ArriveTime"));
            info.setBusinessClass(rs.getString("BusinessClass"));
            info.setBusinessClassMoney(rs.getDouble("BusinessClassMoney"));
            info.setBusinessClassSurplusTicket(rs.getInt("BusinessClassSurplusTicket"));
            info.setFirstClass(rs.getString("FirstClass"));
            info.setFirstClassMoney(rs.getDouble("FirstClassMoney"));
            info.setFirstClassSurplusTicket(rs.getInt("FirstClassSurplusTicket"));
            info.setSecondClass(rs.getString("SecondClass"));
            info.setSecondtClassMoney(rs.getDouble("SecondtClassMoney"));
            info.setFirstClassSurplusTicket(rs.getInt("SecondClassSurplusTicket"));
            info.setMildLie(rs.getString("MildLie"));
            info.setMildLieMoney(rs.getDouble("MildLieMoney"));
            info.setMilDlieSurplusSurplusTicket(rs.getInt("MilDlieSurplusSurplusTicket"));
            info.setMildMildSeat(rs.getString("MildMildSeat"));
            info.setMildSeatMoney(rs.getDouble("MildSeatMoney"));
            info.setMildSeatMoneySurplusTicket(rs.getInt("MildSeatMoneySurplusTicket"));
            info.setHardSeat(rs.getString("HardSeat"));
            info.setHardSeatMoney(rs.getDouble("HardSeatMoney"));
            info.setHardSeatSurplusTicket(rs.getInt("HardSeatSurplusTicket"));
            info.setNotSeat(rs.getString("NotSeat"));
            info.setNotSeatMoney(rs.getDouble("NotSeatMoney"));
            info.setHardSeatSurplusTicket(rs.getInt("NotSeatSurplusTicket"));
            info.setStationNoe(rs.getInt("stationNoe"));
            info.setStationTow(rs.getInt("stationTow"));
        }
        return info;
    }
    public int BusinessClassSurplusTicket(String id){
        String sql="update `trainnumberinfo` set `BusinessClassSurplusTicket` = `BusinessClassSurplusTicket` -1  where `trainNo` = ?";
        List list=new ArrayList();
        list.add(id);
        int count=executeUpdate(sql,list);
        return count;
    }
    public int FirstClassMoney(String id){
        int count=0;
        String sql="update `trainnumberinfo` set FirstClassMoney=FirstClassMoney -1 where `trainNo` = ?";
        List list=new ArrayList();
        list.add(id);
        count=executeUpdate(sql,list);
        return count;
    }
    public int SecondClassSurplusTicket(String id){
        int count=0;
        String sql="update `trainnumberinfo` set SecondClassSurplusTicket=SecondClassSurplusTicket-1  where `trainNo` = ?";
        List list=new ArrayList();
        list.add(id);
        count=executeUpdate(sql,list);
        return count;
    }
    public int HardSeatSurplusTicket(String id){
        int count=0;
        String sql="update `trainnumberinfo` set HardSeatSurplusTicket=HardSeatSurplusTicket-1  where `trainNo` = ?";
        List list=new ArrayList();
        list.add(id);
        count=executeUpdate(sql,list);
        return count;
    }
    public int MilDlieSurplusSurplusTicket(String id){
        int count=0;
        String sql="update `trainnumberinfo` set MilDlieSurplusSurplusTicket=MilDlieSurplusSurplusTicket -1 where `trainNo` = ?";
        List list=new ArrayList();
        list.add(id);
        count=executeUpdate(sql,list);
        return count;
    }
    public int NotSeatSurplusTicket(String id){
        int count=0;
        String sql="update `trainnumberinfo` set NotSeatSurplusTicket=NotSeatSurplusTicket-1 where `trainNo` = ?";
        List list=new ArrayList();
        list.add(id);
        count=executeUpdate(sql,list);
        return count;
    }
    public int MildSeatMoneySurplusTicket(String id){
        int count=0;
        String sql="update `trainnumberinfo` set MildSeatMoneySurplusTicket = MildSeatMoneySurplusTicket-1 where `trainNo` = ?";
        List list=new ArrayList();
        list.add(id);
        count=executeUpdate(sql,list);
        return count;
    }
}
