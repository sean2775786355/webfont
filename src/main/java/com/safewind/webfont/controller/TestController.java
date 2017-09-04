package com.safewind.webfont.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/test")
public class TestController {

	@RequestMapping(value="/auto",method=RequestMethod.GET)
	public String auto(){
		return "/test/auto";
	}
}
