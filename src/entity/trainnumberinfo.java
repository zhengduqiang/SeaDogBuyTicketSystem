package entity;

import java.util.Date;

/**
 * Created by 12789 on 2019/1/12.
 */
public class trainnumberinfo {
    private String trainNo;//车次
    private int leaveCity;//离开城市
    private int destinationCity;//目的地城市
    private Date departDate;//发车日期
    private String leaveTime;//出发时间
    private String arriveTime;//到达时间
    private String lastTime;//历时
    private String businessClass;//商务座
    private double businessClassMoney;//商务座票价金额
    private int businessClassSurplusTicket;//商务座余票数量
    private String firstClass;//一等座
    private double firstClassMoney;//一等座票价金额
    private int firstClassSurplusTicket;//一等座余票数量
    private String secondClass;//二等座
    private double secondtClassMoney;//二等座票价金额
    private int secondClassSurplusTicket;//二等座余票数量
    private String mildLie;//软卧
    private double mildLieMoney;//软卧票价金额
    private int milDlieSurplusSurplusTicket;//软卧余票数量
    private String mildMildSeat;//软座
    private double mildSeatMoney;//软座票价金额
    private int mildSeatMoneySurplusTicket;//软座余票数量

    public String getHardSeat() {
        return HardSeat;
    }

    public void setHardSeat(String hardSeat) {
        HardSeat = hardSeat;
    }

    public double getHardSeatMoney() {
        return HardSeatMoney;
    }

    public void setHardSeatMoney(double hardSeatMoney) {
        HardSeatMoney = hardSeatMoney;
    }

    private String HardSeat;//硬座
    private double HardSeatMoney;//硬座票价金额
    private int hardSeatSurplusTicket;//硬座余票数量
    private String notSeat;//无座
    private double notSeatMoney;//无座票价金额
    private int notSeatSurplusTicket;//无座余票数量
    private int stationNoe;//离开车站：1表示抚州有票，2表示抚州西有票，3表示抚州东有票
    private int stationTow;//到达车站：1表示南昌有票，2表示南昌西有票，3表示南昌东有票

    public String getTrainNo() {
        return trainNo;
    }

    public void setTrainNo(String trainNo) {
        this.trainNo = trainNo;
    }

    public int getLeaveCity() {
        return leaveCity;
    }

    public void setLeaveCity(int leaveCity) {
        this.leaveCity = leaveCity;
    }

    public int getDestinationCity() {
        return destinationCity;
    }

    public void setDestinationCity(int destinationCity) {
        this.destinationCity = destinationCity;
    }

    public Date getDepartDate() {
        return departDate;
    }

    public void setDepartDate(Date departDate) {
        this.departDate = departDate;
    }

    public String getLeaveTime() {
        return leaveTime;
    }

    public void setLeaveTime(String leaveTime) {
        this.leaveTime = leaveTime;
    }

    public String getArriveTime() {
        return arriveTime;
    }

    public void setArriveTime(String arriveTime) {
        this.arriveTime = arriveTime;
    }

    public String getLastTime() {
        return lastTime;
    }

    public void setLastTime(String lastTime) {
        this.lastTime = lastTime;
    }

    public String getBusinessClass() {
        return businessClass;
    }

    public void setBusinessClass(String businessClass) {
        this.businessClass = businessClass;
    }

    public double getBusinessClassMoney() {
        return businessClassMoney;
    }

    public void setBusinessClassMoney(double businessClassMoney) {
        this.businessClassMoney = businessClassMoney;
    }

    public int getBusinessClassSurplusTicket() {
        return businessClassSurplusTicket;
    }

    public void setBusinessClassSurplusTicket(int businessClassSurplusTicket) {
        this.businessClassSurplusTicket = businessClassSurplusTicket;
    }

    public String getFirstClass() {
        return firstClass;
    }

    public void setFirstClass(String firstClass) {
        this.firstClass = firstClass;
    }

    public double getFirstClassMoney() {
        return firstClassMoney;
    }

    public void setFirstClassMoney(double firstClassMoney) {
        this.firstClassMoney = firstClassMoney;
    }

    public int getFirstClassSurplusTicket() {
        return firstClassSurplusTicket;
    }

    public void setFirstClassSurplusTicket(int firstClassSurplusTicket) {
        this.firstClassSurplusTicket = firstClassSurplusTicket;
    }

    public String getSecondClass() {
        return secondClass;
    }

    public void setSecondClass(String secondClass) {
        this.secondClass = secondClass;
    }

    public double getSecondtClassMoney() {
        return secondtClassMoney;
    }

    public void setSecondtClassMoney(double secondtClassMoney) {
        this.secondtClassMoney = secondtClassMoney;
    }

    public int getSecondClassSurplusTicket() {
        return secondClassSurplusTicket;
    }

    public void setSecondClassSurplusTicket(int secondClassSurplusTicket) {
        this.secondClassSurplusTicket = secondClassSurplusTicket;
    }

    public String getMildLie() {
        return mildLie;
    }

    public void setMildLie(String mildLie) {
        this.mildLie = mildLie;
    }

    public double getMildLieMoney() {
        return mildLieMoney;
    }

    public void setMildLieMoney(double mildLieMoney) {
        this.mildLieMoney = mildLieMoney;
    }

    public int getMilDlieSurplusSurplusTicket() {
        return milDlieSurplusSurplusTicket;
    }

    public void setMilDlieSurplusSurplusTicket(int milDlieSurplusSurplusTicket) {
        this.milDlieSurplusSurplusTicket = milDlieSurplusSurplusTicket;
    }

    public String getMildMildSeat() {
        return mildMildSeat;
    }

    public void setMildMildSeat(String mildMildSeat) {
        this.mildMildSeat = mildMildSeat;
    }

    public double getMildSeatMoney() {
        return mildSeatMoney;
    }

    public void setMildSeatMoney(double mildSeatMoney) {
        this.mildSeatMoney = mildSeatMoney;
    }

    public int getMildSeatMoneySurplusTicket() {
        return mildSeatMoneySurplusTicket;
    }

    public void setMildSeatMoneySurplusTicket(int mildSeatMoneySurplusTicket) {
        this.mildSeatMoneySurplusTicket = mildSeatMoneySurplusTicket;
    }
    public int getHardSeatSurplusTicket() {
        return hardSeatSurplusTicket;
    }

    public void setHardSeatSurplusTicket(int hardSeatSurplusTicket) {
        this.hardSeatSurplusTicket = hardSeatSurplusTicket;
    }

    public String getNotSeat() {
        return notSeat;
    }

    public void setNotSeat(String notSeat) {
        this.notSeat = notSeat;
    }

    public double getNotSeatMoney() {
        return notSeatMoney;
    }

    public void setNotSeatMoney(double notSeatMoney) {
        this.notSeatMoney = notSeatMoney;
    }

    public int getNotSeatSurplusTicket() {
        return notSeatSurplusTicket;
    }

    public void setNotSeatSurplusTicket(int notSeatSurplusTicket) {
        this.notSeatSurplusTicket = notSeatSurplusTicket;
    }

    public int getStationNoe() {
        return stationNoe;
    }

    public void setStationNoe(int stationNoe) {
        this.stationNoe = stationNoe;
    }

    public int getStationTow() {
        return stationTow;
    }

    public void setStationTow(int stationTow) {
        this.stationTow = stationTow;
    }
}
