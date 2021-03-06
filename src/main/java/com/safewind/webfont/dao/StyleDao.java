package com.safewind.webfont.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.Style;

/**
 * @function 对字体的风格的数据库操作
 *
 */
@Repository
public interface StyleDao {

    /**
     * 通过字体风格id查找字体的风格名称
     * @param id 字体的风格编号 int 型
     * @return 字体的风格名称
     */
    public String findStyleById(int id);

    //獲取全部風格
    public List<Style> getAllStyles();

    /**
     * 添加字体风格
     * @param style 风格对象
     * @return  影响的记录数
     */
    public int addStyles(Style style);

    /**
     * 更新字体风格名
     * @param style    风格对象
     * @return  影响的记录数
     */
    public int updateStyles(Style style);
}
