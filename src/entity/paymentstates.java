package entity;

/**
 * Created by 12789 on 2019/1/12.
 */
public class paymentstates {
    private int id;//主键，自增列
    private String paymentStates;//订单状态(未支付，已支付)

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPaymentStates() {
        return paymentStates;
    }

    public void setPaymentStates(String paymentStates) {
        this.paymentStates = paymentStates;
    }
}
