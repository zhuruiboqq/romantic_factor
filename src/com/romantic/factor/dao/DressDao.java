package com.romantic.factor.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.entity.Dress;

public interface DressDao {
	
	public List<Dress> selectDress(@Param("pageid") int pageid,@Param("pageSize") int pageSize,@Param("type")int type);
	
	
	public int countDress(@Param("type")int type);
	
	public List<Dress> selectAllDress(@Param("type")int type);
	
}
