package com.safewind.webfont.bean;

/**
 * 字体详细信息
 */
public class FontDetail {

    private int id;            //字体的编号
    private String name;        //字体的名字
    private String manufacture;         //字体的厂商名称
    private String  type;               //字体的类型
    private String encoding;            //字体的中文编码
    private String eEncoding;           //字体的英文编码
    private String phylum;              //字体的语系名称
    private String style;               //字体的风格
    private String copyrightMessage;    //字体的版权信息

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

    public String getManufacture() {
        return manufacture;
    }

    public void setManufacture(String manufacture) {
        this.manufacture = manufacture;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEncoding() {
        return encoding;
    }

    public void setEncoding(String encoding) {
        this.encoding = encoding;
    }

    public String geteEncoding() {
        return eEncoding;
    }

    public void seteEncoding(String eEncoding) {
        this.eEncoding = eEncoding;
    }

    public String getPhylum() {
        return phylum;
    }

    public void setPhylum(String phylum) {
        this.phylum = phylum;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
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

    private int usedTime;              //该字体的使用次数

    @Override
    public String toString() {
        return "FontDetail{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", manufacture='" + manufacture + '\'' +
                ", type='" + type + '\'' +
                ", encoding='" + encoding + '\'' +
                ", eEncoding='" + eEncoding + '\'' +
                ", phylum='" + phylum + '\'' +
                ", style='" + style + '\'' +
                ", copyrightMessage='" + copyrightMessage + '\'' +
                ", usedTime=" + usedTime +
                '}';
    }
}
