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
//    测试分页所要计算的数据
//    @Test
//    public void testPagingCalculate()
//    {
//        PagingCaculate pagingCaculate=new PagingCaculate(fontService.getFontBriefList(),4);
//        System.out.println("========================================== "+pagingCaculate.getNumPage()+"====================================="+pagingCaculate.getNumRow());
//    }

//  测试用户收藏该字体

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
    }


}
