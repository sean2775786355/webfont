package com.safewind.webfont.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.Style;
import com.safewind.webfont.bean.Type;

/**
 * @function 字体的类型的数据库接口
 */
@Repository
public interface TypeDao {

    /**
     * 通过字体类型的id查找字体的类型名称
     * @param   id  字体类型id      int型
     * @return  字体类型的名称       String型
     */
    public String findTypeById(int id);

    //獲取全部類型
    public List<Type> getAllTypes();

    /**
     * 添加字体的类型
     * @param type  字体类型对象
     * @return  影响的记录数
     */
    public int addTypes(Type type);
}
