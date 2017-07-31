package com.safewind.webfont.service;

import java.util.Set;

import com.safewind.webfont.bean.User;

public interface UserService {
	
	public User UserTest(long id);
	
	public User createUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(String username);
	
	public Set<String> findRoles(String username);
	
	public Set<String> findPermissions(String username);
	
	public User findByUsername(String username);
	
	public void UserRoleInsert(long userId,long roleId);
	
	public void UserPasswordModify(String username,String newPassword);
}
