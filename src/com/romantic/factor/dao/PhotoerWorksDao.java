package com.romantic.factor.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.entity.PhotoerWorks;

public interface PhotoerWorksDao {
	
	public List<PhotoerWorks> selectPhotoerWorks(@Param("pageid") int pageid,@Param("pageSize") int pageSize,@Param("photoer_id")int photoer_id);
	
	
	public int countPhotoerWorks(@Param("photoer_id")int photoer_id);
	
	public List<PhotoerWorks> selectAllPhotoerWorks(@Param("photoer_id")int photoer_id);
	
}
