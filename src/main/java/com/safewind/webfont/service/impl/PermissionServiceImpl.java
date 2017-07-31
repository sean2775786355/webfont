package com.safewind.webfont.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.safewind.webfont.bean.Permission;
import com.safewind.webfont.dao.PermissionDao;
import com.safewind.webfont.service.PermissionService;

@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionDao permissionDao;
	
	public void createPermission(Permission permission) {
		permissionDao.createPermission(permission);
	}

	public List<Permission> queryAllPermissions() {
		return permissionDao.queryAllPermissions();
	}

	public void updatePermission(Permission permission) {
		permissionDao.updatePermission(permission);
	}

	public Permission findPermissionById(Long id) {
		return permissionDao.findPermissionById(id);
	}

	public void deletePermission(String permissionName) {
		permissionDao.deletePermission(permissionName);
	}

}
