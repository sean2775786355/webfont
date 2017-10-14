package com.safewind.webfont.user;

import com.safewind.webfont.bean.Font;
import com.safewind.webfont.bean.Phylum;
import com.safewind.webfont.controller.FontController;
import com.safewind.webfont.dao.CollectionDao;
import com.safewind.webfont.dao.CommentDao;
import com.safewind.webfont.dao.FontDao;
import com.safewind.webfont.dao.PhylumDao;
import com.safewind.webfont.service.FontService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@ContextConfiguration("classpath:spring-mybatis.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class FontTest {


    @Autowired
    private FontController fontController;
    @Autowired
    private FontService fontService;
    @Autowired
    private CollectionDao collectionDao;
    @Autowired
    private CommentDao commentDao;
    @Autowired
    private FontDao fontDao;
    @Autowired
    private PhylumDao phylumDao;
    @Autowired
    private Font font;
    @Autowired
    private Phylum phylum;
    @Test
    public void Test1()
    {
//        测试给字体添加评论
//        fontService.addComment("ahui","这个字体还不错",5);
//        System.out.println(fontService.findFontDetailById(1));
//        System.out.println("============查看用户是否搜藏该字体(通过字体id)===================="+fontService.isCollectionFont(1,"ahui"));
//          测试给用户添加该字体
//        fontService.addCollectionFont("ahui",6);
//        测试给用户添加推荐该字体
//        fontService.addRecommendationFont("ahui",3);
//        System.out.println("=============查看用户是否推荐该字体================"+  fontService.isRecommendationFont(1,"ahui"));

//        System.out.println("==============字体列表=============="+fontService.getFontList());

//        System.out.println("++++++++++引用他人的评论（通过评论的编号）+++++++++++++++++++回复的用户名"+fontService.replyOthersComment(1)+"用户的评论"+fontService.quoteOthersComment(1));
//          测试给用户添加该字体收藏
//            fontService.addCollectionFont("ahui",7);


//        System.out.println("============测试用户是否收藏该字体================"+fontService.isCollectionFont(1,"ahui"));
//          执行用户删除自己的评论(注意是假删除)
//        fontService.deleteComment(3,"ahui");
//        测试添加用户推荐该字体到数据库
//        fontService.addRecommendationFont("ahui",5);
//        System.out.println("+++++++++++++++测试用户是否推荐该字体+++++++++++++++++++++"+fontService.isRecommendationFont(5,"ahui"));


//        System.out.println("==============模糊查询 得到字体名 字体厂商编号等================"+fontService.fuzzyQueryFontList("黑体"));

//        Map map= new HashMap();
//        map.put("searchKeyword","义启");
//        map.put("dbIndex",1);
//        map.put("dbNumber",1);
//        System.out.println("=============模糊查询分页================"+fontDao.pageFuzzyQueryFontList(map));

//        System.out.println("============模糊查询分页============"+fontService.getFuzzyQueryFontListPage("1","义启"));


//        System.out.println("============查看字体收藏的数目 通过字体编号=============="+collectionDao.countCollectionFontByFontId(10));
    }

    @Test
    public void Test2()
    {
//      @param map 含有属性  查询开始  | 结束
//            *            属性名：
//                 manufacturerId    厂商id
//                 typeId            类型id
//                 encodingId        编码id
//                 phylumId          语系id
//                 styleId           风格id
//                dbIndex
//                dbNumber
////        测试精确查询
//        Map map=new HashMap();
//        map.put("manufacturerId",55);
//        map.put("typeId",1);
//        map.put("encodingId",1);
//        map.put("phylumId",2);
//        map.put("styleId",1);
//        map.put("dbIndex",0);
//        map.put("dbNumber",5);
//        List<Font> fontList =fontDao.pageExactSearchFontList(map);
//        System.out.println("========================"+fontList.get(0).getManufacturerId()+"=========="+fontList.get(0).getName());

//        成功删除放回的是1   ,失败删除返回的是0  实际上是返回的影响记录的行数
//        System.out.println("==========测试删除时的放回结果=============="+fontDao.deleteFont(13));

//          目前是错的 因为含有                  外键
//        font.setId(11);
//        font.setManufacturerId(8);
//        font.setTypeId(7);
//        font.setEncodingId(2);
//        font.setPhylumId(2);
//        font.setStyleId(10);
//        font.setCopyrightMessage("这是一个好的字体");

//        System.out.println("===============测试更新的放回结果===================="+fontDao.updateFont(font));
//        phylum.setId(3);
//        phylum.setName("其他");
//        System.out.println("===============测试数据库更新是否返回行数====================="+phylumDao.updatePhylumsName(phylum));
//          经过测试update 同样可以返回影响的行数 即记录数  不需要在  ***Mapper.xml中写入 resultType  在接口***Dao.java中写入返回类型int即可
//
//        font.setManufacturerId(8);
//        List<FontBrief> fontBriefList= fontService.getPageExactSearchFontList("1",font);
//        System.out.println("==========fontBriefList============"+fontBriefList.toString());
//        System.out.println("==========count fontBriefList==========="+fontService.countExactSearchFontList(font));

    }

    /**
     * 字体收藏的测试
     */
    @Test
    public void CollectionFontTest()
    {

//        System.out.println("================"+fontController.CollectionFont("7","ahui"));
    }


}
