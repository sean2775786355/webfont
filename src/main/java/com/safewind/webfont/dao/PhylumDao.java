package com.safewind.webfont.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.Phylum;
import com.safewind.webfont.bean.Style;
import com.safewind.webfont.bean.Type;

/**
 * @function 对字体语系的数据库的接口
 */
@Repository
public interface PhylumDao {
    /**
     * 通过字体语系的id    查找  语系的名称
     * @param id    语系的编号       int型
     * @return      返回语系的名称     String型
     */
    public String findPhylumById(int id);
    
  
    //獲取全部語系
    public List<Phylum> getAllPhylums();
  
}
