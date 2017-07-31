package com.safewind.webfont.user;

import java.util.Date;

import org.apache.shiro.SecurityUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.safewind.webfont.bean.User;
import com.safewind.webfont.service.UserService;
import com.safewind.webfont.service.impl.PasswordHelper;

@ContextConfiguration("classpath:spring-mybatis.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserTest {

	@Autowired
	private UserService userService;
	
	@Autowired
	private PasswordHelper passwordHelper;
	
	
	@Test
	public void test() {
		/*User user = new User();
		user.setUsername("18342210821");
		user.setPassword("QIjiahui1998");
		user.setHeadPic("");
		user.setRank(0);
		user.setCreateUsername((String)SecurityUtils.getSubject().getPrincipal());
		user.setCreateTime(new Date());
		
		passwordHelper.encryptPassword(user);
		
		User user_create = userService.createUser(user);
		System.out.println(user_create);*/
	}
	
	@Test
	public void checkUserRolePermissions(){
		System.out.println(userService.findRoles("2220152340"));
		System.out.println(userService.findPermissions("2220152340"));

	}
	
	@Test
	public void UserPasswordModify(){
		//userService.UserPasswordModify("18342210821", "mactawishHui");
		//userService.deleteUser("18342210821");
		//System.out.println(userService.findByUsername("18342210821"));
	} 

}
