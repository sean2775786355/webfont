package com.safewind.webfont.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.safewind.webfont.bean.Encoding;
import com.safewind.webfont.bean.Font;
import com.safewind.webfont.bean.FontBrief;
import com.safewind.webfont.bean.Manufacturer;
import com.safewind.webfont.bean.Phylum;
import com.safewind.webfont.bean.Style;
import com.safewind.webfont.bean.Type;
import com.safewind.webfont.service.FontService;

@Controller
@RequestMapping("/font")
public class FontController {

	@Autowired
	private FontService fontService;
	
	@RequestMapping(value="/products",method=RequestMethod.GET)
	public String products(Model model){
		
		List<FontBrief> fontBriefList = fontService.getFontBriefList();
		System.out.println(fontBriefList);
		System.out.println("============================");
		model.addAttribute("fontBriefList",fontBriefList);
		
		///////////////////////
		List<Manufacturer> manufacturerList = fontService.getAllManufacturers();
		System.out.println(manufacturerList);
		System.out.println("============================");
		model.addAttribute("manufacturerList", manufacturerList);
		
		List<Style> styleList = fontService.getAllStyles();
		System.out.println(styleList);
		System.out.println("============================");
		model.addAttribute("styleList", styleList);
		
		List<Encoding> encodingList = fontService.getAllEncodings();
		System.out.println(encodingList);
		System.out.println("============================");
		model.addAttribute("encodingList", encodingList);
		
		List<Phylum> phylumList = fontService.getAllPhylums();
		System.out.println(phylumList);
		System.out.println("============================");
		model.addAttribute("phylumList", phylumList);
		
		List<Type> typeList = fontService.getAllTypes();
		System.out.println(typeList);
		System.out.println("============================");
		model.addAttribute("typeList", typeList);
		
		
		return "/font/products";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String search(){
		return "/font/search";
	}
}
