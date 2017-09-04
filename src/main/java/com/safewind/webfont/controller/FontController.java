package com.safewind.webfont.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/font")
public class FontController {

	@RequestMapping(value="/products",method=RequestMethod.GET)
	public String products(){
		return "/font/products";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String search(){
		return "/font/search";
	}
}
