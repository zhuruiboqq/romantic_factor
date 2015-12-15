package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import com.romantic.factor.common.util.PageHandler;
import com.romantic.factor.dao.PhotoerDao;
import com.romantic.factor.entity.Photoer;


public class PhotoerService {
	@Autowired
	private PhotoerDao photoerDao;
	
	@Cacheable(value = "photoer",key = "#p0.curPageIndex")
	public List<Photoer> selectPhotoer(PageHandler pageHandler){
		if(pageHandler==null){
			return null;
		}
		return photoerDao.selectPhotoer(pageHandler.getStartIndex(), pageHandler.getPerPageSize());
	}
	@Cacheable(value = "countPhotoer", key = "0")
	public int countPhotoer(){
		
		return photoerDao.countPhotoer();
	}
	@Cacheable(value = "photoer_id", key = "#p0")
	public Photoer selectPhotoerByid(int id){
		return photoerDao.selectPhotoerByid(id);
	}
}