package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

/**
 * 用户的一些个人信息
 * 例如用户电话，微信，性别。。。。。
 */
@Repository
public class Consumer {

    private int id;
    private String username;        //用户名
    private String personalizedSignature;   //用户个性签名
    private String phone;           //用户的手机移动电话
    private String tel;             //用户固定电话
    private String nickname;        //用户的昵称
    private String sex;             //用户的性别
    private String workPlace;       //用户的工作地
    private String email;           //用户的邮箱
    private String qqNum;           //用户的qq号
    private String wechatNum;       //用户的微信号
    private String companyName;     //用户的公司名字
    private String companyIndustry;  //用户的公司行业


    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPersonalizedSignature() {
        return personalizedSignature;
    }

    public void setPersonalizedSignature(String personalizedSignature) {
        this.personalizedSignature = personalizedSignature;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getWorkPlace() {
        return workPlace;
    }

    public void setWorkPlace(String workPlace) {
        this.workPlace = workPlace;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getQqNum() {
        return qqNum;
    }

    public void setQqNum(String qqNum) {
        this.qqNum = qqNum;
    }

    public String getWechatNum() {
        return wechatNum;
    }

    public void setWechatNum(String wechatNum) {
        this.wechatNum = wechatNum;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyIndustry() {
        return companyIndustry;
    }

    public void setCompanyIndustry(String companyIndustry) {
        this.companyIndustry = companyIndustry;
    }

    @Override
    public String toString() {
        return "Consumer{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", personalizedSignature='" + personalizedSignature + '\'' +
                ", phone='" + phone + '\'' +
                ", tel='" + tel + '\'' +
                ", nickname='" + nickname + '\'' +
                ", sex='" + sex + '\'' +
                ", workPlace='" + workPlace + '\'' +
                ", email='" + email + '\'' +
                ", qqNum='" + qqNum + '\'' +
                ", wechatNum='" + wechatNum + '\'' +
                ", companyName='" + companyName + '\'' +
                ", companyIndustry='" + companyIndustry + '\'' +
                '}';
    }



}
