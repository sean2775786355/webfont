package com.safewind.webfont.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.safewind.webfont.bean.Role;
import com.safewind.webfont.dao.RoleDao;
import com.safewind.webfont.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;

	public void createRole(Role role) {
		
		roleDao.createRole(role);
	}

	public long findIDByRoleName(String roleName) {
		
		return roleDao.findIDByRoleName(roleName);
	}

	public List<Role> queryAllRole() {
		return roleDao.queryAllRole();
	}

}
