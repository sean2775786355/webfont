package com.safewind.webfont.controller;

import java.util.List;
import java.util.regex.Pattern;

import com.safewind.webfont.dao.FontDao;
import com.safewind.webfont.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.safewind.webfont.bean.Encoding;
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

	/**
	 * 自己写一个分页的功能
	 * 分页功能的实现实际上是在查询数据库时限制查询的条数 limit
	 * 该分页的总条数是字体的条数，目前还没有装换成查询后的总条数
	 * @return
	 */
	@RequestMapping(value="fontList",method = RequestMethod.GET)

	public String fontList(Model model,String currentPage)
	{

		List<FontBrief> fontBriefList = fontService.getFontListPage(currentPage);
		model.addAttribute("pageInfo",fontService.getInstancePage(currentPage,fontService.countAllFont()));
		System.out.println(fontBriefList);
		System.out.println("============================");
		System.out.println("查看字体记录数="+fontBriefList.size());
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
		return "/font/fontList";
	}

	/**
	 * 用搜索框搜索字体列表的操作
	 * 分页功能的实现实际上是在查询数据库时限制查询的条数 limit
	 * @param model
	 * @param searchKeyword		搜索的关键字
	 * @param currentPage		当前的页数
	 * @return
	 */
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String searchFont(Model model,String searchKeyword,String currentPage){

		model.addAttribute("searchKeyword",searchKeyword);
		//使用的一个正则表达式
		if(currentPage==null || !Pattern.compile("[0-9]{1,9}").matcher(currentPage).matches())
		{
			currentPage = "1";
		}
		List<FontBrief> fontBriefList = fontService.getFuzzyQueryFontListPage(currentPage,searchKeyword);
		model.addAttribute("pageInfo",fontService.getInstancePage(currentPage,fontService.countFuzzyQueryFont(searchKeyword)));
		System.out.println(fontBriefList);
		System.out.println("============================");
		System.out.println("查看字体记录数="+fontBriefList.size());
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
		return "/font/search";
	}
}
