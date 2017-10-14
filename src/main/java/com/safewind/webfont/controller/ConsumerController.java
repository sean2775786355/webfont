package com.safewind.webfont.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.safewind.webfont.bean.Consumer;
import com.safewind.webfont.service.ConsumerService;


@Controller
@RequestMapping("/consumer")
public class ConsumerController{
	
	@Autowired private ConsumerService consumerService;
	
	/**
	 * 浏览个人信息
	 */
	@RequestMapping(value="consumerInfo",method=RequestMethod.GET)
	public String ConsumerInfo(Model model,int id){
		Consumer consumerInfo=consumerService.ConsumerInfo(id);
		model.addAttribute("consumerInfo",consumerInfo);
			
		return "/consumer/consumerInfo";
	}
	
	/**
	 * 提交修改后的个人信息
	 * @param
	 * @return
	 */
	@RequestMapping(value="consumerRepost" ,method=RequestMethod.GET)
	public String ConsumerRepost(Consumer consumer){
		consumerService.ConsumerRepost(consumer);
		return "/consumer/consumerInfo";
		
		
	}
	
	/**
	 * 显示手机号码
	 * 
	 */
	@RequestMapping(value="phoneInfo",method=RequestMethod.GET)
	public String PhoneInfo(Model model,int id){
		String phoneInfo=consumerService.PhoneInfo(id);
		model.addAttribute("phoneInfo",phoneInfo);
		return "/consumer/phoneInfo";
	}
	
	/**
	 * 更改手机号码
	 * 上下两个value不能一样
	 */
	@RequestMapping(value="phoneInfo1",method=RequestMethod.GET)
	public String ChangePhone(int id,String phone){
		consumerService.ChangePhone(id, phone);
		return "/consumer/consumerInfo";
	}
}