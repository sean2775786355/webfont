package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

/**
 * 编码方式
 */

@Repository
public class Encoding {

    private int id;            //字体编码的id
    private String name;        //字体编码的名称
    private String eName;       //字体编码的英文名

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

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName;
    }
    @Override
    public String toString() {
        return "Encoding{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", eName='" + eName + '\'' +
                '}';
    }




}
