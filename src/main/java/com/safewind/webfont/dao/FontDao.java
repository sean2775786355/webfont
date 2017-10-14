package com.safewind.webfont.dao;

import com.safewind.webfont.bean.Font;
import com.safewind.webfont.util.Page;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Map;

/**
 * create By seanChrist 2017/08/04 22:20
 * @function 对字体的数据库操作的一些接口，包括字体的具体信息
 * 例如：编号 名字 类型 是否开源等
 */
@Repository
public interface FontDao {

    /**
     * 供给用户查看浏览字体的简略信息供查找
     * 查询字体列表的默认方式为: 语系--中文   | 开源  |  按使用次数进行排序
     * @return 字体的list集合
     */
    public List<Font> queryFontList();

    /**
     * 用于分页查询 查询的数量
     * @param page
     * @return
     */
    public List<Font> pageQueryFontList(Page page);

    /**
     * 用于模糊查询(页面搜索框 含有：字体名，厂商，类型，风格)
     * @param searchKeyword 查询的关键词
     * @return 字体的集合    List<Font>
     */
    public List<Font> fuzzyQueryFontList(String searchKeyword);


    /**
     * 分页模糊查询得到的字体
     * @param map 含有搜索关键字   查询的开始 | 结束
     *            属性名：
     *            searchKeyword
     *            dbIndex
     *            dbNumber
     * @return 字体集合     List<Font>
     */
    public List<Font> pageFuzzyQueryFontList(Map map);

    /**
     * 分页精确查询 得到字体
     * @param map 含有属性  查询开始  | 结束
     *            属性名：
     *            manufacturerId    厂商id
     *            typeId            类型id
     *            encodingId        编码id
     *            phylumId          语系id
     *            styleId           风格id
     *            dbIndex
     *            dbNumber
     * @return  字体集合    List<Font>
     */
    public List<Font> pageExactSearchFontList(Map map);
    /**
     * 供给用户查看某个字体的详细信息
     * @param id    字体的编号
     * @return      返回字体的对象     字体的详细信息
     */
    public Font findFontDetailById(int id);

    /**
     *当用户收藏字体时，调用此接口，更新数据库字体的收藏次数       增加次数
     * @param id 更新字体次数的 |  字体编号
     * @return 影响的记录数
     */
    public int updateAddFontCollectTime(int id);

    /**
     * 需要更新的字体推荐数量  减少推荐次数
     * @param id    字体id
     * @return  影响的记录数
     */
    public int updateReduceFontCollectTime(int id);

    /**
     * 计算字体的数目
     * 这是用于初次显示字体列表
     * @return 字体的数目
     */
    public long countAllFont();

    /**
     * 模糊查询后计算查的字体的数量
     * @param searchKeyword 查询关键字
     * @return          模糊查询数量  long
     */
    public long countFuzzyQueryFont(String searchKeyword);

    /**
     * 分页精确查询 得到字体
     * @param map 含有属性  查询开始  | 结束
     *            属性名：
     *            manufacturerId    厂商id
     *            typeId            类型id
     *            encodingId        编码id
     *            phylumId          语系id
     *            styleId           风格id
     *            dbIndex
     *            dbNumber
     * @return  精确查询字体的数目
     */
    public long countExactSearchFontList(Map map);

    /**
     * 管理员和用户修改字体的一些属性
         修改的属性有：
         name           字体名称
         manufactureId  厂商编号
         typeId     类型编号
         encodingId 编码ID
         phylumId   语系编号
         styleId    风格编号
         copyrightMessage   版权信息
         isOpensourced  是否开源：0.开源；1.不开源
         isGenuine  是否正版：0. 是正版；1.不是正版
     * @param font
     */
    public int updateFont(Font font);

    /**
     * 管理员添加字体
         name           字体名称
         manufactureId  厂商编号
         typeId     类型编号
         encodingId 编码ID
         phylumId   语系编号
         styleId    风格编号
         copyrightMessage   版权信息
         used_time collected_time recommended_time 设置成 0 (因为刚添加的字体的使用次数 收藏次数 推荐次数没有)
         isOpensourced  是否开源：0.开源；1.不开源
         isGenuine  是否正版：0. 是正版；1.不是正版
     * @param font  字体对象含有以上属性
     */
    public int addFont(Font font);

    /**
     * 管理员删除某个字体 以字体id 删除字体 执行
     * @param id
     */
    public int deleteFont(int id);

}
