package com.safewind.webfont.security;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import com.safewind.webfont.bean.User;
import com.safewind.webfont.service.UserService;

public class UserRealm extends AuthorizingRealm{

	@Autowired
	private UserService userService;
	
	/**
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		
		String username = (String) principals.getPrimaryPrincipal();
		
		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		//分配角色
		authorizationInfo.setRoles(userService.findRoles(username));
		//分配权限
		authorizationInfo.setStringPermissions(userService.findPermissions(username));
		
		return authorizationInfo;
	}
	
	/**
	 * 认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		
		String username = (String)token.getPrincipal();
		
		User user = userService.findByUsername(username);
		
		if(user == null){
			throw new UnknownAccountException();//没有找到该用户
		}
		
		if(Boolean.TRUE.equals(user.getLocked())){
			throw new LockedAccountException();//账户已被锁定
		}
		
		SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
				user.getUsername(),	//用户名
				user.getPassword(),	//密码
				ByteSource.Util.bytes(user.getCredentialsSalt()),	//salt=username+salt
				getName()	//realm name
				);
		
		return authenticationInfo;
	}

}
