package com.safewind.webfont.service;
import com.safewind.webfont.bean.Encoding;
import com.safewind.webfont.bean.Font;
import com.safewind.webfont.bean.FontBrief;
import com.safewind.webfont.bean.FontDetail;
import com.safewind.webfont.bean.Manufacturer;
import com.safewind.webfont.bean.Phylum;
import com.safewind.webfont.bean.Style;
import com.safewind.webfont.bean.Type;
import com.safewind.webfont.util.Page;

import java.util.List;

public interface FontService {

    //得到字体的集合 含有字体厂商id而非名称
    public List<Font> getFontList();
//    得到字体的集合 含有字体厂商id而非名称(用分页)
    public List<FontBrief> getFontListPage(Page page);



    //该字体的详细信息      |   返回字体的详细信息      |    id  字体的编号
    public FontDetail findFontDetailById(int id);

    //判断字体是否被用户收藏
    public boolean isCollectionFont(int fontId,String username);

    //添加用户收藏字体
    public void addCollectionFont(String username , int fontId);

    //判断用户是否推荐该字体
    public boolean isRecommendationFont(int fontId,String username);

    //添加用户收藏该字体
    public void addRecommendationFont(String username ,int fontId);

    //添加用户对字体的评论
    public void addComment(String username,String message,int fontId);

    //回复评论      |   得到用户名           |       id  评论的id
    public String replyOthersComment(int id);

    //引用评论      |   得到用户的评论         |       id  评论的id
    public String quoteOthersComment(int id);

    //獲取全部廠商
    public List<Manufacturer> getAllManufacturers();
    
    //獲取全部類型
    public List<Type> getAllTypes();
    
    //獲取全部編碼
    public List<Encoding> getAllEncodings();
    
    //獲取全部語系
    public List<Phylum> getAllPhylums();
    
    //獲取全部風格
    public List<Style> getAllStyles();
}
