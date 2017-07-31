package com.safewind.webfont.service;

import java.util.List;

import com.safewind.webfont.bean.Role;

public interface RoleService {

	public void createRole (Role role);
	
	public long findIDByRoleName (String roleName);
	
	public List<Role> queryAllRole ();
}
