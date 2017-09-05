package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * 字体推荐的一些信息
 * 推荐用户，推荐时间，字体编号
 */
@Repository
public class Recommendation {

    private int id;            //字体推荐id 编号
    private String username;        //推荐用户名
    private Date recommendTime;     //推荐时间
    private int fontId;            //推荐字体id编号
    private byte isDel;              //判断是否删除推荐 0 不删除，1 删除


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getRecommendTime() {
        return recommendTime;
    }

    public void setRecommendTime(Date recommendTime) {
        this.recommendTime = recommendTime;
    }

    public int getFontId() {
        return fontId;
    }

    public void setFontId(int fontId) {
        this.fontId = fontId;
    }

    public byte getIsDel() {
        return isDel;
    }

    public void setIsDel(byte isDel) {
        this.isDel = isDel;
    }


    @Override
    public String toString() {
        return "RecommendationDao{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", recommendTime=" + recommendTime +
                ", fontId=" + fontId +
                ", isDel=" + isDel +
                '}';
    }


}
