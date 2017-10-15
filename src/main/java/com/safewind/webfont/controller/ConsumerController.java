package com.safewind.webfont.controller;

import com.safewind.webfont.constant.MsgAlertConstant;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.safewind.webfont.bean.Consumer;
import com.safewind.webfont.service.ConsumerService;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/consumer")
public class ConsumerController{
	
	@Autowired private ConsumerService consumerService;
	
	/**
	 * 浏览个人信息
	 */
	@RequestMapping(value="consumerInfo",method=RequestMethod.GET)
	public String ConsumerInfo(Model model){
		//shiro获取用户名
		Subject subject= SecurityUtils.getSubject();
		String username = subject.getPrincipal().toString();
		Consumer consumerInfo=consumerService.ConsumerInfo(username);
		model.addAttribute("consumerInfo",consumerInfo);
			
		return "/consumer/consumerInfo";
	}
	
	/**
	 * 提交修改后的个人信息
	 * 是用json返回数据
	 * @param
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="consumerRepost" ,method=RequestMethod.GET)
	public String ConsumerRepost(Consumer consumer){
		if(consumerService.ConsumerRepost(consumer))
		{
			return MsgAlertConstant.CONSUMER_CHANGE_REPOST_SUCCESS;
		}else {
			return MsgAlertConstant.CONSUMER_CHANGE_REPOST_FAIL;
		}

		
	}
	
	/**
	 * 显示手机号码
	 * 
	 */
	@RequestMapping(value="phoneInfo",method=RequestMethod.GET)
	public String PhoneInfo(Model model){
		//shiro获取用户名
		Subject subject= SecurityUtils.getSubject();
		String username = subject.getPrincipal().toString();
		String phoneInfo=consumerService.PhoneInfo(username);
		model.addAttribute("phoneInfo",phoneInfo);
		return "/consumer/phoneInfo";
	}
	
	/**
	 * 使用json返回提示信息
	 *
	 */
	@ResponseBody
	@RequestMapping(value="ChangePhone",method=RequestMethod.GET)
	public String ChangePhone(String phone){
		//shiro获取用户名
		Subject subject= SecurityUtils.getSubject();
		String username = subject.getPrincipal().toString();
		if(consumerService.ChangePhone(username,phone))
		{
			return MsgAlertConstant.CONSUMER_CHANGE_PHONE_SUCCESS;
		}else
		{
			return MsgAlertConstant.CONSUMER_CHANGE_PHONE_FAIL;
		}

	}
}