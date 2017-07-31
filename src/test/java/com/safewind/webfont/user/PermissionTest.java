package com.safewind.webfont.user;

import java.util.List;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.safewind.webfont.bean.Permission;
import com.safewind.webfont.service.PermissionService;

@ContextConfiguration("classpath:spring-mybatis.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class PermissionTest {

	@Resource
	private PermissionService permissionService;
	
	@Test
	public void permissionCreateTest(){
		/*Permission permission = new Permission();
		permission.setPermission("all");
		permission.setDescription("主宰一切");
		permissionService.createPermission(permission);
		List<Permission> permissionList = permissionService.queryAllPermissions();
		for (Permission permission : permissionList) {
			System.out.println(permission);
		}*/
	}
	
	@Test
	public void updateTest(){
		/*Permission permission = permissionService.findPermissionById(new Long(4));
		permission.setDescription("all");
		permission.setAvailable(false);
		permissionService.updatePermission(permission);
		permissionService.deletePermission("all");*/
	}
}
