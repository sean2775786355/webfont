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
     * 添加用户收藏字体
     * @param username 用户名
     * @param collectTime   用户收藏时间
     * @param fontId    用户收藏字体的编号
     */
    public void addCollectionFont(String username, Date collectTime, int fontId);


    /**
     * 判断用户字体是否被收藏 没被收藏返回null
     * @param fontId    用户所选字体的编号
     * @param username  用户名
     * @return  返回值为空，即用户未收藏该字体，否者用户已经收藏该字体
     *          |有点奇怪的是没有放回boolean值|
     */
    public Collection isCollectionFont(int fontId,String username);

}
