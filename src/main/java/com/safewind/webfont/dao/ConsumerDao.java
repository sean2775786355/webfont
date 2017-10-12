package com.safewind.webfont.dao;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.Consumer;

@Repository
public interface ConsumerDao{
	
	public Consumer ConsumerInfo(int id);
	
	public void ConsumerRepost(Consumer consumer);
	
	public String PhoneInfo(int id);
	
	public void ChangePhone(int id,String phone);
}