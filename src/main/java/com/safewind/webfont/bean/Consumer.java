package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;


@Repository
public class Consumer{
	
	private String username;      //用户名
	private String personalizedSignature;   //个性签名
	private String phone;        //手机号码
	private String tel;         //电话号码
	private String nickname;    //昵称
	private String sex;         //性别
	private String workPlace;   //所在地
	private String email;     //电子邮箱
	private String qqNum;     //QQ号
	private String wechatNum;  //微信号
	private String companyName;  //公司名字
	private String companyIndustry;      //公司行业
	private int id;     //员工编号
	
	
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
	@Override
	public String toString() {
		return "Consumer [username=" + username + ", personalizedSignature="
				+ personalizedSignature + ", phone=" + phone + ", tel=" + tel
				+ ", nickName=" + nickname + ", sex=" + sex + ", workPlace="
				+ workPlace + ", email=" + email + ", qqNum=" + qqNum
				+ ", wechatNum=" + wechatNum + ", companyName=" + companyName
				+ ", companyIndustry=" + companyIndustry + ", id=" + id + "]";
	}
	
		
}