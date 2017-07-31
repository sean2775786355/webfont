package com.safewind.webfont.user;

import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.safewind.webfont.bean.Role;
import com.safewind.webfont.service.RoleService;

@ContextConfiguration("classpath:spring-mybatis.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class RoleTest {

	@Autowired
	private RoleService roleService;
	
	@Test
	public void roleCreate(){
		Role role = new Role();
		role.setRole("administer");
		role.setDescription("管理员");
		roleService.createRole(role);
	}
	
	@Test
	public void findID(){
		System.out.println(roleService.findIDByRoleName("admin"));
	}
	
	@Test
	public void queryAllRole(){
		List<Role> roleList = roleService.queryAllRole();
		for (Role role : roleList) {
			System.out.println(role);
		}
	}
}
