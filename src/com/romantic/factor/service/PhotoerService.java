package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;

import com.romantic.factor.dao.PhotoerDao;
import com.romantic.factor.entity.Photoer;


public class PhotoerService {
	@Autowired
	private PhotoerDao photoerDao;
	
	@Cacheable(value = "photoer",key = "#p0.pageid")
	public List<Photoer> selectPhotoer(Photoer photoer){
		if(photoer==null){
			return null;
		}
		return photoerDao.selectPhotoer(photoer.getPageid(),photoer.getPageSize());
	}
	@Cacheable(value = "countPhotoer", key = "0")
	public int countPhotoer(){
		
		return photoerDao.countPhotoer();
	}
	@Cacheable(value = "photoer_id", key = "#p0")
	public Photoer selectPhotoerByid(int id){
		return photoerDao.selectPhotoerByid(id);
	}
	
	/*@Caching(evict = { @CacheEvict("countPhotoer"), @CacheEvict(value = "photoer", allEntries = true),
			@CacheEvict(value = "photoer_id", allEntries = true),@CacheEvict(value = "selectDress", allEntries = true),
			@CacheEvict(value = "countDress", allEntries = true),@CacheEvict(value = "selectMakeupMakeer", allEntries = true)
			,@CacheEvict(value = "countMakeupMakeer", allEntries = true),@CacheEvict(value = "selectMakeupMakeerByid", allEntries = true)
	,@CacheEvict(value = "selectMakeupWorks", allEntries = true),@CacheEvict(value = "countMakeupWorks", allEntries = true)
	,@CacheEvict(value = "aboutPhotoerWorks", allEntries = true)
	,@CacheEvict(value = "selectPhotoerWorks", allEntries = true)
	,@CacheEvict(value = "countPhotoerWorks", allEntries = true),@CacheEvict(value = "aboutPhotoerWorks", allEntries = true)})*/
	
	
	
}
