package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

import java.util.Date;

/**
 * 字体的属性 这个语数据库对应
 * 但是编码，语系，类型等存储的是编号id
 */
@Repository
public class Font {

    private int id;                    //字体编号
    private String name;                //字体名称
    private int manufacturerId;         //字体厂商的编号
    private int typeId;                //字体类型的编号
    private int encodingId;            //字体编码的编号id
    private int phylumId;              //字体语系的编号
    private int styleId;               //字体的风格编号
    private String copyrightMessage;    //字体版权信息
    private int usedTime;              //字体被使用的次数
    private int collectedTime;         //字体被收藏的次数
    private int recommondedTime;       //字体被推荐的次数
    private Date uploadTime;            //字体的上传时间
    private int isOpensourced;           //字体是否开源：0.开源；1.不开源
    private int isGenuine;              //字体是否正版：0. 是正版；1.不是正版


    public int getIsOpensource() {
        return isOpensourced;
    }

    public void setIsOpensource(int isOpensource) {
        this.isOpensourced = isOpensource;
    }


    public int getIsGenuine() {
        return isGenuine;
    }

    public void setIsGenuine(int isGenuine) {
        this.isGenuine = isGenuine;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getManufacturerId() {
        return manufacturerId;
    }

    public void setManufacturerId(int manufacturerId) {
        this.manufacturerId = manufacturerId;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getEncodingId() {
        return encodingId;
    }

    public void setEncodingId(int encodingId) {
        this.encodingId = encodingId;
    }

    public int getPhylumId() {
        return phylumId;
    }

    public void setPhylumId(int phylumId) {
        this.phylumId = phylumId;
    }

    public int getStyleId() {
        return styleId;
    }

    public void setStyleId(int styleId) {
        this.styleId = styleId;
    }

    public String getCopyrightMessage() {
        return copyrightMessage;
    }

    public void setCopyrightMessage(String copyrightMessage) {
        this.copyrightMessage = copyrightMessage;
    }

    public int getUsedTime() {
        return usedTime;
    }

    public void setUsedTime(int usedTime) {
        this.usedTime = usedTime;
    }

    public int getCollectedTime() {
        return collectedTime;
    }

    public void setCollectedTime(int collectedTime) {
        this.collectedTime = collectedTime;
    }

    public int getRecommondedTime() {
        return recommondedTime;
    }

    public void setRecommondedTime(int recommondedTime) {
        this.recommondedTime = recommondedTime;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }



    @Override
    public String toString() {
        return "Font{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", manufacturerId=" + manufacturerId +
                ", typeId=" + typeId +
                ", encodingId=" + encodingId +
                ", phylumId=" + phylumId +
                ", styleId=" + styleId +
                ", copyrightMessage='" + copyrightMessage + '\'' +
                ", usedTime=" + usedTime +
                ", collectedTime=" + collectedTime +
                ", recommondedTime=" + recommondedTime +
                ", uploadTime=" + uploadTime +
                ", isOpensource=" + isOpensourced +
                ", isGenuine=" + isGenuine +
                '}';
    }



}
