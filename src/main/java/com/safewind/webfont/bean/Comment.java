package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * 字体的评论
 */
@Repository
public class Comment {

    private int id;
    private String username;        //评论字体的用户名
    private Date uploadTime;        //用户评论字体时间
    private String message;         //用户评论的内容
    private int fontId;            //评论的字体的id
    private byte isDel;              //是否删除评论假删除 0没删除  1 删除


    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

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

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
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
        return "Comment{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", uploadTime=" + uploadTime +
                ", message='" + message + '\'' +
                ", fontId=" + fontId +
                ", isDel=" + isDel +
                '}';
    }


}
