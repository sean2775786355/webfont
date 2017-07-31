package com.safewind.webfont.dao;

import java.util.Set;

import org.springframework.stereotype.Repository;

import com.safewind.webfont.bean.User;

@Repository
public interface UserDao {

	public User UserTest(long id);
	
	public Long createUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(String username);
	
	public Set<String> findRoles(String username);
	
	public Set<String> findPermissions(String username);
	
	public User findByUsername(String username);
	
	public void UserRoleInsert(long userId,long roleId);
}
