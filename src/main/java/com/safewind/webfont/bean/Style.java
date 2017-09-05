package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

/**
 * create By seanChrist 2017/08/05
 * 字体风格
 */
@Repository
public class Style {

    private int id;        //字体的风格id
    private String name;    //字体风格名字


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
        return "Style{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }



}
