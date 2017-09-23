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
     * @return 字体的集合
     */
    public List<Font> fuzzyQueryFontList(String searchKeyword);


    /**
     * 分页查询的到的字体
     * @param map 含有搜索关键字   查询的开始 和结束
     *            属性名：
     *            searchKeyword
     *            dbIndex
     *            dbNumber
     * @return 字体集合
     */
    public List<Font> pageFuzzyQueryFontList(Map map);
    /**
     * 供给用户查看某个字体的详细信息
     * @param id    字体的编号
     * @return      返回字体的对象     字体的详细信息
     */
    public Font findFontDetailById(int id);

    /**
     *当用户收藏字体时，调用此接口，更新数据库字体的收藏次数
     * @param id 更新字体次数的字体编号
     */
    public void updateFontCollectTime(int id);

    /**
     * 计算字体的数目
     * @return
     */
    public long countAllFont();

    /**
     * 模糊查询后计算查的字体的数量
     * @param searchKeyword 查询关键字
     * @return          模糊查询数量  long
     */
    public long countFuzzyQueryFont(String searchKeyword);

}
