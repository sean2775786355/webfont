package com.safewind.webfont.service.impl;

import com.safewind.webfont.bean.*;
import com.safewind.webfont.dao.*;
import com.safewind.webfont.service.FontService;
import com.safewind.webfont.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/**
 * 字体逻辑层服务层
 * 实现有关字体操作的功能
 */
@Service
public class FontServiceImpl implements FontService {

    ///////////////////Dao/////////////////////////////////
    @Autowired
    private FontDao fontDao;    //字体对应的数据库
    @Autowired
    private StyleDao styleDao;  //字体风格的数据库
    @Autowired
    private TypeDao typeDao;    //字体类型的数据库
    @Autowired
    private PhylumDao phylumDao;        //字体语系的数据库
    @Autowired
    private EncodingDao encodingDao;            //  字体编码的数据库（中文编码，和英文编码）
    @Autowired
    private CollectionDao collectionDao;        //字体收藏的数据库
    @Autowired
    private RecommendationDao recommendationDao;    //字体推荐的数据库
    @Autowired
    private CommentDao commentDao;                  //字体评论的数据库
    @Autowired
    private  ManufactureDao manufactureDao;         //厂商的数据库


    //////////////////bean////////////////////////////////////////
    @Autowired
    private Collection collection;                  //收藏字体的对象
    @Autowired
    private Comment comment;                    //字体评论对象
    @Autowired
    private Recommendation recommendation;      //推荐字体的对象

    /**
     * 显示字体列表所使用的方法
     * @return List<Font> 一个字体的集合 包含字体的一些具体体信息 包括字体编号，字体使用次数，等字体的属性
     * 都可得到
     */
    @Override
    public List<Font> getFontList() {

        return fontDao.queryFontList();
    }



    /**
     * 实现分页功能的字体列表
     *  该方法实现了将字体的厂商id 编码id转化为 厂商名称 字体编码的名称等
     * @param currentPage 当前页数
     * @return  字体简略信息的一个集合
     */
    @Override
    public List<FontBrief> getFontListPage(String currentPage) {

        List<Font> fontList = fontDao.pagequeryFontList(this.getInstancePage(currentPage));
        List<FontBrief> fontBriefListPage = new ArrayList<>();
        for(int i=0;i<fontList.size();i++)
        {
            FontBrief fontBrief = new FontBrief();
            fontBrief.setId(fontList.get(i).getId());
            fontBrief.setName(fontList.get(i).getName());
            //添加字体中文编码
            fontBrief.setEncoding(encodingDao.findEncodingById(fontList.get(i).getEncodingId()));
            //添加字体英文编码
            fontBrief.seteEncoding(encodingDao.findEEncodingById(fontList.get(i).getEncodingId()));
            fontBrief.setType(typeDao.findTypeById(fontList.get(i).getTypeId()));
            fontBrief.setStyle(styleDao.findStyleById(fontList.get(i).getStyleId()));
            fontBrief.setPhylum(phylumDao.findPhylumById(fontList.get(i).getPhylumId()));
            fontBrief.setManufacture(manufactureDao.findManufactureById(fontList.get(i).getManufactureId()));

            fontBrief.setCollectedTime(fontList.get(i).getCollectedTime());
            fontBrief.setUsedTime(fontList.get(i).getUsedTime());
            fontBrief.setRecommondedTime(fontList.get(i).getRecommondedTime());


            fontBriefListPage.add(fontBrief);

        }
        return fontBriefListPage;
    }



    /**
     * 单个字体的详细信息
     * @param id    字体的编号
     * @return      该字体的一个对象
     */
    @Override
    public FontDetail findFontDetailById(int id) {
        FontDetail fontDetail = new FontDetail();
        Font font = fontDao.findFontDetailById(id);
        fontDetail.setId(id);
        fontDetail.setName(font.getName());
        fontDetail.setManufacture(manufactureDao.findManufactureById(font.getManufactureId()));
        fontDetail.setType(typeDao.findTypeById(font.getTypeId()));
        fontDetail.setEncoding(encodingDao.findEncodingById(font.getEncodingId()));
        fontDetail.seteEncoding(encodingDao.findEncodingById(font.getEncodingId()));
        fontDetail.setPhylum(phylumDao.findPhylumById(font.getPhylumId()));
        fontDetail.setStyle(styleDao.findStyleById(font.getStyleId()));
        fontDetail.setCopyrightMessage(font.getCopyrightMessage());
        fontDetail.setUsedTime(font.getUsedTime());
        return fontDetail;
    }

    /**
     *判断用户是否收藏了该字体
     * @param fontId    前端传入的字体id
     * @param username  前端传入的用户名
     * @return  返回值为true 则收藏了该字体，false 用户未收藏该字体
     */
    @Override
    public boolean isCollectionFont(int fontId, String username) {
        collection.setFontId(fontId);
        collection.setUsername(username);
        if(collectionDao.isCollectionFont(collection)==null)
        {
            return false;
        }else {
            return true;
        }
    }

    /**
     * 向用户添加收藏字体的操作
     * @param username      用户名
     *收藏时间在下面操作
     * @param fontId            收藏字体的编号
     */
    @Override
    public void addCollectionFont(String username, int fontId) {
        //用户名
        collection.setUsername(username);
        //字体id编号
        collection.setFontId(fontId);
        //收藏时间
        collection.setCollectTime(new Date());
        collectionDao.addCollectionFont(collection);

    }

    /**
     * 判断用户是否推荐该字体
     * @param fontId    推荐字体的编号
     * @param username      用户的姓名
     * @return      为真则用户已经推荐该字体:假,用户未推荐该字体
     */
    @Override
    public boolean isRecommendationFont(int fontId, String username) {
        recommendation.setFontId(fontId);
        recommendation.setUsername(username);
        if(recommendationDao.isRecommendationFont(recommendation)==null)
        {
            return false;

        }else {
            return true;
        }

    }

    /**
     * 添加用户推荐该字体
     * @param username  用户名
     *推荐时间 为下面服务产生
     * @param fontId       推荐字体编号
     */
    @Override
    public void addRecommendationFont(String username, int fontId) {
        //推荐时间
        Date recommendTime = new Date();
        recommendation.setUsername(username);
        recommendation.setFontId(fontId);
        recommendation.setRecommendTime(recommendTime);
        recommendationDao.addRecommendationFont(recommendation);

    }

    /**
     * 添加用户评论的字体
     * @param username      用户姓名
     * @param message       用户评论字体的内容
     * @param fontId        用户评论的字体
     */
    @Override
    public void addComment(String username, String message, int fontId) {
        Date uploadTime = new Date();
        comment.setUsername(username);
        comment.setUploadTime(uploadTime);
        comment.setMessage(message);
        comment.setFontId(fontId);
        commentDao.addComment(comment);
    }
    public void deleteComment(int fontId,String username)
    {
        comment.setFontId(fontId);
        comment.setUsername(username);
        commentDao.deleteComment(comment);
    }

    /**
     * 得到回复用户的名称
     * @param id       评论的编号
     * @return             @ 用户的名称
     */
    @Override
    public String replyOthersComment(int id) {


        return "@ "+commentDao.replyOthersComment(id);
    }

    /**
     * 得到引用的内容
     * @param id         评论的编号
     * @return          用户评论的内容
     */
    @Override
    public String quoteOthersComment(int id) {

        return commentDao.quoteOthersComment(id);
    }
    
    //獲取全部廠商
    public List<Manufacturer> getAllManufacturers(){
    	return manufactureDao.getAllManufacturers();
    }
    
    //獲取全部類型
    public List<Type> getAllTypes(){
    	return typeDao.getAllTypes();
    }
    
    //獲取全部編碼
    public List<Encoding> getAllEncodings(){
    	return encodingDao.getAllEncodings();
    }
    
    //獲取全部語系
    public List<Phylum> getAllPhylums(){
    	return phylumDao.getAllPhylums();
    }
    
    //獲取全部風格
    public List<Style> getAllStyles(){
    	return styleDao.getAllStyles();
    }

    /**
     * 关于分页的对象
     * 得到有关分页的信息
     * @param currentPage
     * @return 分页对象
     */
    @Override
    public Page getInstancePage(String currentPage) {
        Page page=new Page();
        Pattern pattern = Pattern.compile("[0-9]{1,9}");
        if(currentPage==null || !pattern.matcher(currentPage).matches())
        {
            currentPage = "1";
        }
        //所要取出的总记录数
        page.setTotalNumber(fontDao.countAllFont());
        page.setCurrentPage(Integer.parseInt(currentPage));
        page.count();
        return page;
    }

}
