package entity;

/**
 * Created by 12789 on 2019/1/12.
 */
public class county {
    private int id;//id
    private String countyName;//区县名称
    private int cityId;//城市id外键

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCountyName() {
        return countyName;
    }

    public void setCountyName(String countyName) {
        this.countyName = countyName;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }
}
