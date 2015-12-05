package com.romantic.factor.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.entity.MakeupWorks;

public interface MakeupWorksDao {
	
	public List<MakeupWorks> selectMakeupWorks(@Param("pageid") int pageid,@Param("pageSize") int pageSize,@Param("makeer_id") int makeer_id);
	
	
	public int countMakeupWorks(@Param("makeer_id") int makeer_id);
	
	public List<MakeupWorks> selectAllMakeupWorks(@Param("makeer_id")int makeer_id);
	
}
