package com.safewind.webfont.dao;

import com.safewind.webfont.bean.Collection;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * 对字体收藏的数据库操作接口
 * 获得有关字体收藏的信息
 */
@Repository
public interface CollectionDao {

    /**
     * 供管理者查看收藏的数据
     * 查询收藏字体的信息 包括收藏时间 收藏用户名   收藏的字体编号
     * @param id    收藏的编号   通过这个唯一标识收藏信息
     * @return      返回收藏的list集合
     */
    public List<Collection> queryCollectionList(int id);

    /**
     * 供用户显示自己收藏的数据
     * @param id    收藏的编号   int型
     * @return      收藏的对象   Collection
     */
    public Collection queryCollectionById(int id);

    /**
     * 供用户名查看用户信息
     * @param username  用户名
     * @return      用户收藏字体列表
     */
    public List<Collection> queryCollectionByUsername(String username);

    /**
     * 添加用户收藏字体
     * collection 含有的属性：
     *  username 用户名
     *  collectTime   用户收藏时间
     *  fontId    用户收藏字体的编号
     */
    public void addCollectionFont(Collection collection);

    /**
     * 通过用户名 字体编号 删除字体
     * @param collection 收藏的对象 含有收藏字体的id 和收藏用户名
     * @return  影响的记录数
     */
    public int deleteCollectionFont(Collection collection);
    /**
     * 判断用户字体是否被收藏 没被收藏返回null
     * collection 含有的属性：
     *  fontId    用户所选字体的编号
     *  username  用户名
     * @return  返回值为空，即用户未收藏该字体，否者用户已经收藏该字体
     *          |有点奇怪的是没有放回boolean值|
     */
    public Collection isCollectionFont(Collection collection);

    /**
     * 通过该字体编号查找收藏该字体的数量
     * @param fontId    字体编号
     * @return      收藏字体的数量  long
     */
    public long countCollectionFontByFontId(int fontId);



}
