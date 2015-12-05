package com.romantic.factor.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.entity.Photoer;

public interface PhotoerDao {
	
	public List<Photoer> selectPhotoer(@Param("pageid") int pageid,@Param("pageSize") int pageSize);
	
	
	public int countPhotoer();
	
	public Photoer selectPhotoerByid(@Param("id") int id);
}
