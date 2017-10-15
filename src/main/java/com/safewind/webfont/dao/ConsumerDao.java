package com.safewind.webfont.dao;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.Consumer;

@Repository
public interface ConsumerDao{
	
	public Consumer ConsumerInfo(String username);
	
	public int ConsumerRepost(Consumer consumer);
	
	public String PhoneInfo(String username);
	
	public int ChangePhone(Consumer consumer);
}