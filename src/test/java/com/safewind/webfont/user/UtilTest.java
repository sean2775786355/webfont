package com.safewind.webfont.user;

import com.safewind.webfont.dao.CollectionDao;
import com.safewind.webfont.dao.CommentDao;
import com.safewind.webfont.service.FontService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration("classpath:spring-mybatis.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UtilTest {


//    测试分页所要计算的数据
//@Autowired
//private FontService fontService;
//
//    @Test
//    public void testPagingCalculate()
//    {
//        PagingCaculate pagingCaculate=new PagingCaculate(fontService.getFontBriefList(),4);
//        System.out.println("========================================== "+pagingCaculate.getNumPage()+"====================================="+pagingCaculate.getNumRow());
//    }

//  测试用户收藏该字体

    @Autowired
    private FontService fontService;
    @Autowired
    private CollectionDao collectionDao;
    @Autowired
    private CommentDao commentDao;
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



    }


}
