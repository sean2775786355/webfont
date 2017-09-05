package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

/**
 * 字体厂商
 */
@Repository
public class Manufacturer {

    private   int id;          //字体厂商的id
    private  String name;       //字体厂商的名字

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
        return "Manufacturer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }



}
