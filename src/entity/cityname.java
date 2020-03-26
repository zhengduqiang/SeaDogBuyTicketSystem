package entity;

/**
 * Created by 12789 on 2019/1/12.
 */
public class cityname {
    private int id;//id
    private String cityName;//城市名称
    private int provinceId;//省份id

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public int getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(int provinceId) {
        this.provinceId = provinceId;
    }
}
