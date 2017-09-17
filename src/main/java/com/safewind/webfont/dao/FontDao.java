package com.safewind.webfont.dao;

import com.safewind.webfont.bean.Font;
import com.safewind.webfont.util.Page;
import org.springframework.stereotype.Repository;

import java.util.List;

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
    public List<Font> pagequeryFontList(Page page);
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

}
