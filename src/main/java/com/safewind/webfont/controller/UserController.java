package com.safewind.webfont.controller;

import com.safewind.webfont.bean.*;
import com.safewind.webfont.service.FontService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	FontService fontService;
	@RequestMapping(value="/person",method=RequestMethod.GET)
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
	public String fontManage(Model model){
		List<Manufacturer> manufacturerList = fontService.getAllManufacturers();
		model.addAttribute("manufacturerList", manufacturerList);
		List<Style> styleList = fontService.getAllStyles();
		model.addAttribute("styleList", styleList);
		List<Encoding> encodingList = fontService.getAllEncodings();
		model.addAttribute("encodingList", encodingList);
		List<Phylum> phylumList = fontService.getAllPhylums();
		model.addAttribute("phylumList", phylumList);
		List<Type> typeList = fontService.getAllTypes();
		model.addAttribute("typeList", typeList);

		return "/user/fontManage";
	}
}
