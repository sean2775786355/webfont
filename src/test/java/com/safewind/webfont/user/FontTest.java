package com.safewind.webfont.user;

import com.safewind.webfont.dao.CollectionDao;
import com.safewind.webfont.dao.CommentDao;
import com.safewind.webfont.dao.FontDao;
import com.safewind.webfont.service.FontService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@ContextConfiguration("classpath:spring-mybatis.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class FontTest {


    @Autowired
    private FontService fontService;
    @Autowired
    private CollectionDao collectionDao;
    @Autowired
    private CommentDao commentDao;
    @Autowired
    private FontDao fontDao;

    @Test
    public void test()
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
    }


}
