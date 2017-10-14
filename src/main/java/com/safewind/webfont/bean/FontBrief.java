package com.safewind.webfont.bean;

/**
 * create By seanChrist 2017/08/05
 * 字体列表页面的简略信息
 * 该类是有关字体简略信息的一个类，包含类厂商名（不是厂商id）,字体的风格（非id是字符串形式）等
 */
public class FontBrief {
    private int id;     				//字体的编号
    private String  name;   			//字体的名字
    private String  type;   			//字体的类型
    private String  encoding;   		//字体的中文编码
    private String  eEncoding;  		//字体的英文编码
    private String  phylum;     		//字体的语系
    private String  style;      		//字体的风格
    private String  manufacture;        //字体厂商
    private int usedTime;              //字体被使用的次数
    private int collectedTime;         //字体被收藏的次数
    private int recommondedTime;       //字体被推荐的次数


    public String geteEncoding() {
        return eEncoding;
    }

    public void seteEncoding(String eEncoding) {
        this.eEncoding = eEncoding;
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

	public String getManufacture() {
		return manufacture;
	}

	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
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

	@Override
	public String toString() {
		return "FontBrief [id=" + id + ", name=" + name + ", type=" + type + ", encoding=" + encoding + ", eEncoding="
				+ eEncoding + ", phylum=" + phylum + ", style=" + style + ", manufacture=" + manufacture + ", usedTime="
				+ usedTime + ", collectedTime=" + collectedTime + ", recommondedTime=" + recommondedTime + "]";
	}



}
