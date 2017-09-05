package com.safewind.webfont.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.Encoding;
import com.safewind.webfont.bean.Manufacturer;
import com.safewind.webfont.bean.Phylum;
import com.safewind.webfont.bean.Style;
import com.safewind.webfont.bean.Type;

/**
 * @function 对厂商的数据库的接口
 * 通过厂商id 可获得厂商名 等
 */
@Repository
public interface ManufactureDao {
    /**
     * 通过厂商的编号查找厂商的名称
     * @param id 厂商的编号  int 型
     * @return 厂商的名称    String型
     */
    public String findManufactureById(int id);
    
    //獲取全部廠商
    public List<Manufacturer> getAllManufacturers();
    
    
}
