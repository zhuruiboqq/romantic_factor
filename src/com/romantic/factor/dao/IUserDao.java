package com.romantic.factor.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.entity.User;


public interface IUserDao {

	public void add(User user);

	public void delete(int id);

	public void update(User user);

	public User getAllById(int id);

	public List<User> getAll();
	
	public List<User> findNamePwdByUser(@Param("username") String username,@Param("password") String password);
	
	public User selectByName(@Param("username") String username);

	public User findByEmailSign(@Param("sign") String sign);
	
	public User selectByNameAndEmail(@Param("username") String username,@Param("email") String email);
}
