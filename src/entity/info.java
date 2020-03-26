package entity;

/**
 * Created by 12789 on 2019/1/12.
 */
public class info {
    private int id;//id
    private String infoName;//代售点名称
    private String address;//地址
    private String time;//营业时间
    private int infoNum;//窗口数量
    private int provinceid;//省份外键id
    private int cityId;//城市外键id
    private int countyId;//区县外键id

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getInfoName() {
        return infoName;
    }

    public void setInfoName(String infoName) {
        this.infoName = infoName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getInfoNum() {
        return infoNum;
    }

    public void setInfoNum(int infoNum) {
        this.infoNum = infoNum;
    }

    public int getProvinceid() {
        return provinceid;
    }

    public void setProvinceid(int provinceid) {
        this.provinceid = provinceid;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public int getCountyId() {
        return countyId;
    }

    public void setCountyId(int countyId) {
        this.countyId = countyId;
    }
}
