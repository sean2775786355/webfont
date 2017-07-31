package com.safewind.webfont.service;

import java.util.List;

import com.safewind.webfont.bean.Permission;

public interface PermissionService {

	public void createPermission (Permission permission);
	
	public List<Permission> queryAllPermissions();
	
	public void updatePermission(Permission permission);
	
	public Permission findPermissionById(Long id);
	
	public void deletePermission(String permissionName);
}
