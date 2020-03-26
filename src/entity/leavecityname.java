package entity;

/**
 * Created by 12789 on 2019/1/12.
 */
public class leavecityname {
    private int id;//主键，自增列
    private String cityName;//城市
    private String stationNoe;//车站1
    private String stationTwo;//车站2
    private String stationThree;//车站3

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

    public String getStationNoe() {
        return stationNoe;
    }

    public void setStationNoe(String stationNoe) {
        this.stationNoe = stationNoe;
    }

    public String getStationTwo() {
        return stationTwo;
    }

    public void setStationTwo(String stationTwo) {
        this.stationTwo = stationTwo;
    }

    public String getStationThree() {
        return stationThree;
    }

    public void setStationThree(String stationThree) {
        this.stationThree = stationThree;
    }
}
