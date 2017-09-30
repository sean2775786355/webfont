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

    /**
     * 通过厂商id编号更新厂商用户名
     * @param manufacturer 一个厂商对象携带需要改的厂商id和厂商用户名
     * @return  返回在数据库操作中影响的记录数
     */
    public int updateManufacturersName(Manufacturer manufacturer);

    /**
     * 添加厂商方法
     * @param manufacturer  添加厂商的属性  主要是厂商名
     * @return  返回影响数据库的记录数     主要是用来判断是否成功的标识
     */
    public int addManufacturers(Manufacturer manufacturer);

    /**
     * 删除某个厂商 需要注意:这操作有风险!!!!!
     * @param id
     * @return 返回在数据库操作中影响的记录数
     */
    public int deleteManufacturers(int id);
    
    
}
