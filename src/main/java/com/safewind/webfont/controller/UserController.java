package com.safewind.webfont.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping(value="/person")
	public String person(){
		return "/user/person";
	}
	
	@RequestMapping(value="/account",method=RequestMethod.GET)
	public String account(){
		return "/user/account";
	}
	
	@RequestMapping(value="/message",method=RequestMethod.GET)
	public String message(){
		return "/user/message";
	}
	
	@RequestMapping(value="/fontManage",method=RequestMethod.GET)
	public String fontManage(){
		return "/user/fontManage";
	}
}
