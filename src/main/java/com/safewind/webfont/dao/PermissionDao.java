package com.safewind.webfont.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.Permission;

@Repository
public interface PermissionDao {

	public void createPermission (Permission permission);
	
	public List<Permission> queryAllPermissions();
	
	public void updatePermission(Permission permission);
	
	public Permission findPermissionById(Long id);
	
	public void deletePermission(String permissionName);
}
