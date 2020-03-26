package entity;

/**
 * Created by 12789 on 2019/1/12.
 */
public class ordersinfo {
    private int orderId;//订单号,主键标识列
    private String trainNo;//车次id外键
    private String ordersDate;//订单日期
    private String leaveCity;//出发地
    private String destinationCity;//目的地
    private String departDate;//发车日期
    private String departTime;//离开时间
    private String arriveTime;//到达时间
    private String lastTime;//历时
    private String seat;//座位类型
    private String ticketSeed;//票种类型
    private int boolTickeNumber;//订票数量
    private int paymentStates;//订票状态，外键
    private double ticketPriceMoney;//票价金额
    private String name;//真实姓名
    public String getDepartDate() {
        return departDate;
    }

    public void setDepartDate(String departDate) {
        this.departDate = departDate;
    }

    public String getOrdersDate() {
        return ordersDate;
    }

    public void setOrdersDate(String ordersDate) {
        this.ordersDate = ordersDate;
    }

    public String getDepartTime() {
        return departTime;
    }

    public void setDepartTime(String departTime) {
        this.departTime = departTime;
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
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getTrainNo() {
        return trainNo;
    }

    public void setTrainNo(String trainNo) {
        this.trainNo = trainNo;
    }


    public String getLeaveCity() {
        return leaveCity;
    }

    public void setLeaveCity(String leaveCity) {
        this.leaveCity = leaveCity;
    }

    public String getDestinationCity() {
        return destinationCity;
    }

    public void setDestinationCity(String destinationCity) {
        this.destinationCity = destinationCity;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public String getTicketSeed() {
        return ticketSeed;
    }

    public void setTicketSeed(String ticketSeed) {
        this.ticketSeed = ticketSeed;
    }

    public int getBoolTickeNumber() {
        return boolTickeNumber;
    }

    public void setBoolTickeNumber(int boolTickeNumber) {
        this.boolTickeNumber = boolTickeNumber;
    }

    public int getPaymentStates() {
        return paymentStates;
    }

    public void setPaymentStates(int paymentStates) {
        this.paymentStates = paymentStates;
    }

    public double getTicketPriceMoney() {
        return ticketPriceMoney;
    }

    public void setTicketPriceMoney(double ticketPriceMoney) {
        this.ticketPriceMoney = ticketPriceMoney;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String userName;//用户昵称
}
