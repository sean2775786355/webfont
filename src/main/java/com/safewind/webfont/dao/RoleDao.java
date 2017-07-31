package com.safewind.webfont.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.Role;
@Repository
public interface RoleDao {

	public void createRole (Role role);
	
	public long findIDByRoleName (String roleName);
	
	public List<Role> queryAllRole();
}
