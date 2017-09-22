package com.safewind.webfont.util;

/**
 * 分页实现的实体类
 */
public class Page {

    /**
     * 总条数
     */
    private long totalNumber;
    /**
     * 每页显示的条数
     */
    private int pageNumber = 10;
    /**
     * 当前第几页
     */
    private long currentPage;
    /**
     * 总页数
     */
    private long totalPage;
    /**
     * 数据库中limit的参数，从第几条开始
     */
    private long dbIndex;
    /**
     * 数据库中limit的参数,一共取多少条
     */
    private int dbNumber;
    public long getTotalNumber() {
        return totalNumber;
    }

    public void setTotalNumber(long totalNumber) {
        this.totalNumber = totalNumber;
    }

    public long getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(long currentPage) {
        this.currentPage = currentPage;
    }

    public long getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(long totalPage) {
        this.totalPage = totalPage;
    }

    public long getDbIndex() {
        return dbIndex;
    }

    public void setDbIndex(long dbIndex) {
        this.dbIndex = dbIndex;
    }

    public int getDbNumber() {
        return dbNumber;
    }

    public void setDbNumber(int dbNumber) {
        this.dbNumber = dbNumber;
    }

    /**
     * 根据当前对象中的属性计算设置相关的属性
     */
    public void count()
    {
        //计算总页数
        long totalPageTemp =  this.totalNumber/this.pageNumber;
        int plus = (this.totalNumber%this.pageNumber)==0 ? 0:1;
        totalPageTemp+=plus;
        if(totalPageTemp<=0)
        {
            totalPageTemp=1;
        }
        this.totalPage=totalPageTemp;

        //设置当前页数
        //总页数小于当前页数，应将当前页数设置为总页数
        if(this.totalPage<this.currentPage)
        {
            this.currentPage=this.totalPage;
        }
        //当前页数小于1,设置为1
        if(this.currentPage<1)
        {
            this.currentPage=1;
        }
        //设置limit参数
        this.dbIndex = (this.currentPage-1)*this.pageNumber;
        this.dbNumber=this.pageNumber;
    }


}
