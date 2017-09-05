package com.safewind.webfont.dao;

import com.safewind.webfont.bean.Recommendation;
import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * @function 用户推荐字体的数据库接口
 * 包含用户的 id 字体的id  推荐时间等
 */
@Repository
public interface RecommendationDao {
    /**
     * 判断用户是否推荐字体
     * @param fontId
     * @param username
     * @return
     */
    public Recommendation isRecommendationFont(int fontId, String username);

    /**
     * 添加用户推荐字体
     * @param username
     * @param recommendTime
     * @param fontId
     */
    public void addRecommendationFont(String username, Date recommendTime, int fontId);
}
