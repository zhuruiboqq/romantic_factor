package com.romantic.factor.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.romantic.factor.dao.IUserDao;
import com.romantic.factor.entity.User;


public class UserService {

	@Autowired
	private IUserDao userDao;

	public void add(User user) {
		userDao.add(user);

	}
	
	public void update(User user) {
		userDao.update(user);

	}
	
	/*@Cacheable(value = "userService_userLogin")*/
	public List<User> userLogin(String username,String password) {
		
		return userDao.findNamePwdByUser(username, password);
	
	}
	
	/*@Cacheable(value = "userService_sign")*/
	public User findByEmailSign(String sign){
		return userDao.findByEmailSign(sign);
		
	}
	/*@Cacheable(value = "userService_selectByNameAndEmail")*/
	public User selectByNameAndEmail(@Param("username") String username,@Param("email") String email){
		return userDao.selectByNameAndEmail(username,email);
	}
}
