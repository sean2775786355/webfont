package com.safewind.webfont.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safewind.webfont.bean.Consumer;
import com.safewind.webfont.dao.ConsumerDao;
import com.safewind.webfont.service.ConsumerService;

@Service
public class ConsumerServiceImpl implements ConsumerService{
	@Autowired
	ConsumerDao consumerDao;
	@Autowired
	Consumer consumer;
	
	//预览个人信息
	@Override
	public Consumer ConsumerInfo(String username){
		Consumer consumerInfo=consumerDao.ConsumerInfo(username);
		return consumerInfo;
	}
	
	
	//完善个人信息
	@Override
	public boolean ConsumerRepost(Consumer consumer){
		if(consumerDao.ConsumerRepost(consumer)==1)
		{
			return true;
		}else
		{
			return false;
		}
		
	}
	
	//显示已绑定手机号
	@Override
	public String PhoneInfo(String username) {
		String phoneInfo=consumerDao.PhoneInfo(username);
		return phoneInfo;
	}
	
	//更改绑定手机号 返回为真表示成功，返回会false，表示失败
	@Override
	public boolean ChangePhone(String username,String phone){
		consumer.setUsername(username);
		consumer.setPhone(phone);
		if(consumerDao.ChangePhone(consumer)==1)
		{
			return true;
		}else {
			return false;
		}
	}
}