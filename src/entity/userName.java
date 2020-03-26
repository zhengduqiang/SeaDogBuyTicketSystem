package entity;

/**
 * Created by 12789 on 2019/1/11.
 */
public class userName {
    private int userid;//用户id
    private String username;//用户名
    private String password;//用户密码
    private String name;//用户姓名
    private String sex;//性别
    private String dateOfbirth;//出生日期
    private String fixationphone;//固定电话
    private String cellphonenumber;//手机电话
    private String emailAddress;//电子邮箱
    private String certificateType;//证件类型
    private String identityCard;//身份证号码
    private String passwordWhat;//密码提示问题
    private String passwordAnswer;//密码提示答案
    private int creditPeople;//信用人,0表示正常，-1表示失信在一定时间内不能购票
    private int userlevel;//用户等级
    private int userjf;//用户积分
    private double money;//用户余额

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDateOfbirth() {
        return dateOfbirth;
    }

    public void setDateOfbirth(String dateOfbirth) {
        this.dateOfbirth = dateOfbirth;
    }

    public String getFixationphone() {
        return fixationphone;
    }

    public void setFixationphone(String fixationphone) {
        this.fixationphone = fixationphone;
    }

    public String getCellphonenumber() {
        return cellphonenumber;
    }

    public void setCellphonenumber(String cellphonenumber) {
        this.cellphonenumber = cellphonenumber;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getCertificateType() {
        return certificateType;
    }

    public void setCertificateType(String certificateType) {
        this.certificateType = certificateType;
    }

    public String getIdentityCard() {
        return identityCard;
    }

    public void setIdentityCard(String identityCard) {
        this.identityCard = identityCard;
    }

    public String getPasswordWhat() {
        return passwordWhat;
    }

    public void setPasswordWhat(String passwordWhat) {
        this.passwordWhat = passwordWhat;
    }

    public String getPasswordAnswer() {
        return passwordAnswer;
    }

    public void setPasswordAnswer(String passwordAnswer) {
        this.passwordAnswer = passwordAnswer;
    }

    public int getCreditPeople() {
        return creditPeople;
    }

    public void setCreditPeople(int creditPeople) {
        this.creditPeople = creditPeople;
    }

    public int getUserlevel() {
        return userlevel;
    }

    public void setUserlevel(int userlevel) {
        this.userlevel = userlevel;
    }

    public int getUserjf() {
        return userjf;
    }

    public void setUserjf(int userjf) {
        this.userjf = userjf;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }
}
