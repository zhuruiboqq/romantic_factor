package com.romantic.factor.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.entity.MakeupMakeer;
import com.romantic.factor.entity.Photoer;

public interface MakeupMakeerDao {
	
	public List<MakeupMakeer> selectMakeupMakeer(@Param("pageid") int pageid,@Param("pageSize") int pageSize);
	
	
	public int countMakeupMakeer();
	
	public MakeupMakeer selectMakeupMakeerByid(@Param("id") int id);
}
