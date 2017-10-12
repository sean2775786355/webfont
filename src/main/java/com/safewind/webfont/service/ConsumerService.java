package com.safewind.webfont.service;

import com.safewind.webfont.bean.Consumer;

public interface ConsumerService{
	/*
	 * 预览个人信息
	 */
	
	public Consumer ConsumerInfo(int id);
	
	/*
	 * 完善个人信息
	 */
	
	public void ConsumerRepost(Consumer consumer);
	
	/*
	 * 显示已绑定的手机号
	 */
	
	public String PhoneInfo(int id);
	
	/*
	 * 更换绑定手机号
	 */
	
	public void ChangePhone(int id,String phone);
	
}