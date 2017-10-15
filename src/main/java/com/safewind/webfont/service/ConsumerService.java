package com.safewind.webfont.service;

import com.safewind.webfont.bean.Consumer;

public interface ConsumerService{
	/*
	 * 预览个人信息
	 */
	
	public Consumer ConsumerInfo(String username);
	
	/*
	 * 完善个人信息
	 */
	
	public boolean ConsumerRepost(Consumer consumer);
	
	/*
	 * 显示已绑定的手机号
	 */
	
	public String PhoneInfo(String username);
	
	/*
	 * 更换绑定手机号
	 */
	
	public boolean ChangePhone(String username,String phone);
	
}