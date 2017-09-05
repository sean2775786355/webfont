package com.safewind.webfont.bean;

import org.springframework.stereotype.Repository;

/**
 * create by seanChrist 2017/8/3
 * 字体的类型
 */
@Repository
public class Type {

    private  int id;       //字体类型的id

    private   String name;      //字体类型的名字

    @Override
    public String toString() {
        return "TypeDao{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }



    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }




}
