package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * 有关收藏的
 * 用户名，时间，字体编号id
 */
@Repository
public class Collection {

    private int id;
    private Date collectTime;
    private String username;        //收藏用户的用户名
    private int fontId;            //收藏字体编码，id
    private byte isDel;              //收藏是否删除：0，否；1，是


    @Override
    public String toString() {
        return "Collection{" +
                "id=" + id +
                ", collectTime=" + collectTime +
                ", username='" + username + '\'' +
                ", fontId=" + fontId +
                ", isDel=" + isDel +
                '}';
    }





    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public byte getIsDel() {
        return isDel;
    }

    public void setIsDel(byte isDel) {
        this.isDel = isDel;
    }


    public int getId() {
		return id;
	}





	public void setId(int id) {
		this.id = id;
	}





	public int getFontId() {
		return fontId;
	}





	public void setFontId(int fontId) {
		this.fontId = fontId;
	}





	public Date getCollectTime() {
        return collectTime;
    }

    public void setCollectTime(Date collectTime) {
        this.collectTime = collectTime;
    }

}
