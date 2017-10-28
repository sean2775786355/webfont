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
import java.util.Map;

public interface FontService {

    /**
     * 得到字体的集合 含有字体厂商id而非名称
     * @return 字体的集合
     */
    public List<Font> getFontList();

    /**
     * 得到字体的集合 含有字体厂商id而非名称(用分页)
     * @param currentPage 当前页数
     * @return
     */
    public List<FontBrief> getFontListPage(String currentPage);

     /**
     * 用于模糊查询(页面搜索框 含有：字体名，厂商，类型，风格)
     * @param searchKeyword 查询的关键词
     * @return 字体的集合
     */
    public List<Font> fuzzyQueryFontList(String searchKeyword);

    /**
     * 模糊查询  用于分页
     * @param currentPage   当前页数
     * @param searchKeyword 搜索关键字
     * @return      字体的简略信息
     */
    public List<FontBrief> getFuzzyQueryFontListPage(String currentPage,String searchKeyword);


    /**
     * 分页精确查询 得到字体
     *     查询开始  | 结束
     *            属性名：
     *        @param     currentPage
     *        @param font  属性
     *             manufacturerId    厂商id
     *             typeId            类型id
     *             encodingId        编码id
     *             phylumId          语系id
     *             styleId           风格id
     * @return  字体集合    List<FontBrief>
     */
    public List<FontBrief> getPageExactSearchFontList(String currentPage,Font font,String sort);

    /**
     * 该字体的详细信息      |   返回字体的详细信息      |    id  字体的编号
     */
    public FontDetail findFontDetailById(int id);

    /**
     * 判断字体是否被用户收藏
     * @param fontId
     * @param username
     * @return
     */
    public boolean isCollectionFont(int fontId,String username);

    /**
     * 添加用户收藏字体
     * @param username 收藏用户名
     * @param fontId 收藏字体id
     */
    public void addCollectionFont(String username , int fontId);

    /**
     * 用户删除该字体的收藏
     * @param username
     * @param fontId
     * @return  true 删除成功  false 删除失败
     */
    public boolean deleteCollectionFont(String username , int fontId);

    /**
     * 更新字体的收藏次数
     * @param fontId    字体编号
     * @return  true 更新字体收藏次数成功   |     false   更新字体收藏次数失败
     */
    public boolean updateAddFontCollectTime(int fontId);

    /**
     * 判断用户是否推荐该字体
     * @param fontId 字体编号
     * @param username 推荐用户名
     * @return 真 推荐   |   假  未推荐
     */
    public boolean isRecommendationFont(int fontId,String username);

    /**
     * 添加用户收藏该字体
     * @param username  用户名
     * @param fontId    字体编号
     */
    public void addRecommendationFont(String username ,int fontId);

    /**
     * 添加用户对字体的评论
     * @param username  用户名
     * @param message   评论信息
     * @param fontId    字体编号
     */
    public void addComment(String username,String message,int fontId);

    /**
     * 删除用户对字体的评论 执行的是假删除
     * @param fontId    字体编号
     * @param username  用户名
     */
    public void deleteComment(int fontId,String username);

    /**
     * 回复评论      |   得到用户名           |       id  评论的id
     * @param id    评论的编号
     * @return      评论的信息
     */
    public String replyOthersComment(int id);

    /**
     * 引用评论      |   得到用户的评论         |       id  评论的id
     * @param id    评论的编号
     * @return      引用他人的评论     字符串
     */
    public String quoteOthersComment(int id);

    /**
     * 获取全部字体厂商
     * @return  厂商的集合
     */
    public List<Manufacturer> getAllManufacturers();

    /**
     * 获取全部的字体类型
     * @return 字体类型集合
     */
    public List<Type> getAllTypes();

    /**
     * 获取字体的编码
     * @return  字体编码的集合
     */
    public List<Encoding> getAllEncodings();

    /**
     * 获取全部的语系
     * @return  字体语系的集合
     */
    public List<Phylum> getAllPhylums();

    /**
     * 获取全部的风格
     * @return      字体风格的集合
     */
    public List<Style> getAllStyles();

    /**
     * 获取page对象
     * @param currentPage 总记录数
     * @param totalNumber 总记录数
     * @return  分页对象 Page
     */
    public Page getInstancePage(String currentPage,long totalNumber);

    /**
     * 计算字体的数目
     * 这是用于初次显示字体列表
     * @return 字体的数目
     */
    public long countAllFont();

    /**
     * 模糊查询 计算总记录数
     * @param searchKeyword
     * @return 模糊查询的记录总数
     */
    public long countFuzzyQueryFont(String searchKeyword);

    /**
     * 分页精确查询 得到字体map 含有属性  查询开始  | 结束
     * @param
     * @param font 属性
     *              厂商id
     *            typeId            类型id
     *            encodingId        编码id
     *            phylumId          语系id
     *            styleId           风格id
     * @return  精确查询字体的数目
     */
    public long countExactSearchFontList(Font font);

}
