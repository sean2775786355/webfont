package com.safewind.webfont.service.impl;

import com.safewind.webfont.bean.*;
import com.safewind.webfont.bean.Collection;
import com.safewind.webfont.dao.*;
import com.safewind.webfont.service.FontService;
import com.safewind.webfont.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
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
     * 用于模糊查询(页面搜索框 含有：字体名，厂商，类型，风格)
     * @param searchKeyword  查询的关键字
     * @return List<Font> 一个字体的集合 包含字体的一些具体体信息 包括字体编号，字体使用次数，等字体的属性
     * 都可得到
     */
    @Override
    public List<Font> fuzzyQueryFontList(String searchKeyword) {

        return fontDao.fuzzyQueryFontList(searchKeyword);
    }

    /**
     * 通过模糊查询 搜索框的模糊查询
     * @param currentPage   当前页数
     * @param searchKeyword 搜索关键字
     * @return
     */
    @Override
    public List<FontBrief> getFuzzyQueryFontListPage(String currentPage,String searchKeyword ) {
        Page page=this.getInstancePage(currentPage,fontDao.countFuzzyQueryFont(searchKeyword));
        Map map = new HashMap();
        map.put("searchKeyword",searchKeyword);
        map.put("dbIndex",page.getDbIndex());
        map.put("dbNumber",page.getDbNumber());
        List<Font> fuzzyFontList = fontDao.pageFuzzyQueryFontList(map);
        return this.transformFontListToFontBriefPage(fuzzyFontList);
    }

    @Override
    public List<FontBrief> getPageExactSearchFontList(String currentPage, Font font) {
        Map map = new HashMap();
        map.put("manufacturerId",font.getManufacturerId());
        map.put("typeId",font.getTypeId());
        map.put("encodingId",font.getEncodingId());
        map.put("phylumId",font.getPhylumId());
        map.put("styleId",font.getStyleId());
        Page page=this.getInstancePage(currentPage,fontDao.countExactSearchFontList(map));
        map.put("dbIndex",page.getDbIndex());
        map.put("dbNumber",page.getDbNumber());
        List<Font> fontList = fontDao.pageExactSearchFontList(map);
        return this.transformFontListToFontBriefPage(fontList);
    }


    /**
     * 实现分页功能的字体列表
     *  该方法实现了将字体的厂商id 编码id转化为 厂商名称 字体编码的名称等
     * @param currentPage 当前页数
     * @return  字体简略信息的一个集合
     */
    @Override
    public List<FontBrief> getFontListPage(String currentPage) {
        Page page=this.getInstancePage(currentPage,fontDao.countAllFont());
        //得到的是全部字体的一个分页
        List<Font> fontList = fontDao.pageQueryFontList(this.getInstancePage(currentPage,page.getTotalNumber()));
        return this.transformFontListToFontBriefPage(fontList);
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
        fontDetail.setManufacture(manufactureDao.findManufactureById(font.getManufacturerId()));
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

    /**
     * 删除自己对字体的评论 但执行的是假删除 只是不给用户显示数据罢了。
     * @param fontId    字体编号
     * @param username  用户名
     */
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
     * 得到有关分页的信息 全部字体
     * @param currentPage 当前页数
     * @return 分页对象
     */
    @Override
    public Page getInstancePage(String currentPage,long totalNumber) {
        Page page=new Page();
        Pattern pattern = Pattern.compile("[0-9]{1,9}");
        if(currentPage==null || !pattern.matcher(currentPage).matches())
        {
            currentPage = "1";
        }
        //所要取出的总记录数
        page.setTotalNumber(totalNumber);
        page.setCurrentPage(Integer.parseInt(currentPage));
        page.count();
        return page;
    }

    @Override
    public long countAllFont() {

        return fontDao.countAllFont();
    }

    /**
     * 模糊查询 计算总记录数
     * @param searchKeyword
     * @return 模糊查询的记录总数
     */
    @Override
    public long countFuzzyQueryFont(String searchKeyword) {

        return fontDao.countFuzzyQueryFont(searchKeyword);
    }

    /**
     * 精确分类查询
     * @param font 属性
     *  manufacturerId    厂商id
     *  encodingId    编码id
     *  typeId    类型id
     *  phylumId   语系id
     *  styleId   风格id
     * @return 得到精确分类查询结果的数目
     */
    @Override
    public long countExactSearchFontList(Font font) {
        Map map=new HashMap();
        map.put("manufacturerId",font.getManufacturerId());
        map.put("typeId",font.getTypeId());
        map.put("encodingId",font.getEncodingId());
        map.put("phylumId",font.getPhylumId());
        map.put("styleId",font.getStyleId());
        return fontDao.countExactSearchFontList(map);
    }

    /**
     * 可重复使用的方法 封装方法
     * 该方法是  通过转换 List<Font>  ===>   List<FontBrief>
     * @param fontList List<Font>
     * @return  List<FontBrief>
     */
    private List<FontBrief> transformFontListToFontBriefPage(List<Font> fontList)
    {
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
            fontBrief.setManufacture(manufactureDao.findManufactureById(fontList.get(i).getManufacturerId()));

            fontBrief.setCollectedTime(fontList.get(i).getCollectedTime());
            fontBrief.setUsedTime(fontList.get(i).getUsedTime());
            fontBrief.setRecommondedTime(fontList.get(i).getRecommondedTime());

            fontBriefListPage.add(fontBrief);

        }
        return fontBriefListPage;
    }

}
