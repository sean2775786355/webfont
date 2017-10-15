package com.safewind.webfont.user;

import com.safewind.webfont.service.ConsumerService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration("classpath:spring-mybatis.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class ConsumerTest {
    @Autowired
    ConsumerService consumerService;
    @Test
    public void testConsumer()
    {
//        System.out.println("========ahui手机号：=========="+consumerService.PhoneInfo("ahui"));
//        System.out.println("==========ahui的个人信息==========="+consumerService.ConsumerInfo("ahui"));
//        System.out.println("======================"+consumerService.ChangePhone("ahui","12554215112"));
    }
}
