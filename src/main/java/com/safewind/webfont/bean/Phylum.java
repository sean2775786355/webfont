package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

/**
 * 字体语系
 */
@Repository
public class Phylum {


    private int id;            //字体语系id
    private String name;        //字体语系的名字
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

    @Override
    public String toString() {
        return "Phylum{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }



}
