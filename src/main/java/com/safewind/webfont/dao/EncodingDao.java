package com.safewind.webfont.dao;

import com.safewind.webfont.bean.Encoding;
import com.safewind.webfont.bean.Phylum;
import com.safewind.webfont.bean.Style;
import com.safewind.webfont.bean.Type;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @function 对字体编码的数据库操作接口
 */
@Repository
public interface EncodingDao {
    /**
     * 根据字体编码的id得到字体的编码集合
     * @param id 字体编码的id    int型
     * @return  字体编码的对象的集合      字体的编码包含中文名和英文名
     */
    public List<Encoding> queryEncodingById(int id);

    /**
     *
     * @param id    字体编码的id
     * @return  字体编码的中文名字
     */
    public String findEncodingById(int id);

    /**
     *
     * @param id    字体编码的id
     * @return      字体编码的英文名称
     */
    public String findEEncodingById(int id);

    
    
    //獲取全部編碼
    public List<Encoding> getAllEncodings();

    /**
     * 管理员 添加字体编码操作
     * @param encoding 字体编码
     */
    public void addEncodings(Encoding encoding);

    /**
     * 管理员 通过字体编码id 修改 字体编码的中文名字和英文名字
     * @param encoding  字体编码对象
     */
    public void updateEncodings(Encoding encoding);
    

}
