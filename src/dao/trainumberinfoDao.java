package dao;

import entity.trainnumberinfo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by asus on 2019/1/16.
 */
public class trainumberinfoDao extends BaseDao {
    public List<trainnumberinfo> piaojiachaxun(int LeaveCity, int DestinationCity, String DepartDate) throws SQLException {
        String sql = "SELECT * FROM trainnumberinfo WHERE LeaveCity=? AND DestinationCity=? AND DepartDate=?";
        Object[] params = {LeaveCity, DestinationCity, DepartDate};
        ResultSet rs = executeQuery(sql, params);
        List<trainnumberinfo> list = new ArrayList<>();
        while (rs.next()) {
            trainnumberinfo info = new trainnumberinfo();
            info.setTrainNo(rs.getString("trainNo"));
            info.setLeaveCity(rs.getInt("LeaveCity"));
            info.setDestinationCity(rs.getInt("DestinationCity"));
            info.setDepartDate(rs.getDate("DepartDate"));
            info.setLeaveTime(rs.getString("LeaveTime"));
            info.setLastTime(rs.getString("LastTime"));
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
            //info.setNotSeat(rs.getString("NotSeat"));
            info.setNotSeatMoney(rs.getDouble("NotSeatMoney"));
            info.setNotSeatSurplusTicket(rs.getInt("NotSeatSurplusTicket"));
            info.setLeaveTime(rs.getString("LeaveTime"));
            info.setStationNoe(rs.getInt("stationNoe"));
            info.setStationTow(rs.getInt("stationTow"));
            list.add(info);
        }
        return list;
    }

    public List<trainnumberinfo> yupiaochaxun(int LeaveCity, int DestinationCity, String DepartDate) throws SQLException {
        String sql = "SELECT * FROM trainnumberinfo WHERE LeaveCity=? AND DestinationCity=? AND DepartDate=?";
        Object[] params = {LeaveCity, DestinationCity, DepartDate};
        ResultSet rs = executeQuery(sql, params);
        List<trainnumberinfo> list = new ArrayList<>();
        while (rs.next()) {
            trainnumberinfo info = new trainnumberinfo();
            info.setTrainNo(rs.getString("trainNo"));
            info.setLeaveCity(rs.getInt("LeaveCity"));
            info.setDestinationCity(rs.getInt("DestinationCity"));
            info.setDepartDate(rs.getDate("DepartDate"));
            info.setLeaveTime(rs.getString("LeaveTime"));
            info.setLastTime(rs.getString("LastTime"));
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
            info.setNotSeatMoney(rs.getDouble("NotSeatMoney"));
            info.setNotSeatSurplusTicket(rs.getInt("NotSeatSurplusTicket"));
            info.setLeaveTime(rs.getString("LeaveTime"));
            info.setStationNoe(rs.getInt("stationNoe"));
            info.setStationTow(rs.getInt("stationTow"));
            list.add(info);
        }
        return list;
    }
}
