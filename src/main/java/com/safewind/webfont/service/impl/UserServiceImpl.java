package com.safewind.webfont.service.impl;

import java.util.Date;
import java.util.Set;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safewind.webfont.bean.User;
import com.safewind.webfont.constant.DBMsgConstant;
import com.safewind.webfont.dao.UserDao;
import com.safewind.webfont.service.UserService;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private PasswordHelper passwordHelper;
	
	public User UserTest(long id) {
		return userDao.UserTest(id);
	}

	public Set<String> findRoles(String username) {
		return userDao.findRoles(username);
	}

	public Set<String> findPermissions(String username) {
		return userDao.findPermissions(username);
	}

	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}

	public User createUser(User user) {
		
		user.setRank(0);
		user.setCreateUsername((String)SecurityUtils.getSubject().getPrincipal());
		user.setCreateTime(new Date());
		user.setContent(DBMsgConstant.HH_ADMIN_USER_CONTENT);
		
		passwordHelper.encryptPassword(user);
		
		userDao.createUser(user);
		//user.setId(id);
		
		return user;
	}
	 
	public void updateUser(User user) {
		userDao.updateUser(user);
	}

	public void deleteUser(String username) {
		userDao.deleteUser(username);
	}

	public void UserRoleInsert(long userId, long roleId) {
		userDao.UserRoleInsert(userId, roleId);
	}

	public void UserPasswordModify(String username,String newPassword) {
		User user = findByUsername(username);
		if(user == null){
			System.out.println("用户名不存在！");
			return;
		}
		user.setPassword(newPassword);
		passwordHelper.encryptPassword(user);
		updateUser(user);
	}

}
