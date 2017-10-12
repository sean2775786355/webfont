package com.safewind.webfont.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safewind.webfont.bean.Consumer;
import com.safewind.webfont.dao.ConsumerDao;
import com.safewind.webfont.service.ConsumerService;

@Service
public class ConsumerServiceImpl implements ConsumerService{
	@Autowired ConsumerDao consumerDao;
	
	
	//预览个人信息
	@Override
	public Consumer ConsumerInfo(int id){
		Consumer consumerInfo=consumerDao.ConsumerInfo(id);
		return consumerInfo;
	}
	
	
	//完善个人信息
	@Override
	public void ConsumerRepost(Consumer consumer){
		consumerDao.ConsumerRepost(consumer);
		
	}
	
	//显示已绑定手机号
	@Override
	public String PhoneInfo(int id) {
		String phoneInfo=consumerDao.PhoneInfo(id);
		return phoneInfo;
	}
	
	//更改绑定手机号
	@Override
	public void ChangePhone(int id,String phone){
		consumerDao.ChangePhone(id,phone);
		
	}
}