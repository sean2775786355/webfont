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
    
}
