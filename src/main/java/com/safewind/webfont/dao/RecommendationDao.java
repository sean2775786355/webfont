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
     * recommendation 所传递的属性：
     *  fontId
     *  username
     * @return
     */
    public Recommendation isRecommendationFont(Recommendation recommendation);

    /**
     * 添加用户推荐字体
     * recommendation 所传递的属性
     * username 推荐用户名
     * recommendTime 推荐时间
     * fontId 推荐字体编号
     */
    public void addRecommendationFont(Recommendation recommendation);
}
