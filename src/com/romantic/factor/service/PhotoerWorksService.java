package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Service;

import com.romantic.factor.common.util.PageHandler;
import com.romantic.factor.dao.PhotoerWorksDao;
import com.romantic.factor.entity.PhotoerWorks;

@Service
public class PhotoerWorksService {
	@Autowired
	private PhotoerWorksDao photoerWorksDao;
	
	@Cacheable(value = "selectPhotoerWorks", key = "#p1+'_'+#p0.curPageIndex")
	public List<PhotoerWorks> selectPhotoerWorks(PageHandler pageHandler, int artistID){
		if(pageHandler==null){
			return null;
		}
		return photoerWorksDao.selectPhotoerWorks(pageHandler.getStartIndex(), pageHandler.getPerPageSize(), artistID);
	}
	@Cacheable(value = "countPhotoerWorks", key = "0")
	public int countPhotoerWorks(int artistID){
		return photoerWorksDao.countPhotoerWorks(artistID);
	}
	@Cacheable(value = "aboutPhotoerWorks", key = "#p0")
	public List<PhotoerWorks> aboutPhotoerWorks(PhotoerWorks photoerWorks){
		return photoerWorksDao.selectAllPhotoerWorks(photoerWorks.getPhotoer_id());
	}
	
	//@CacheEvict(value = "selectPhotoerWorks",allEntries = true)
//	@CacheEvict(value="selectPhotoerWorks", allEntries=true)
	@Caching(evict = {@CacheEvict("countPhotoer"), @CacheEvict(value="photoer", allEntries=true),
			@CacheEvict(value="photoer_id", allEntries=true),@CacheEvict(value="selectDress", allEntries=true),
			@CacheEvict(value="countDress", allEntries=true),@CacheEvict(value="selectMakeupMakeer", allEntries=true)
			,@CacheEvict(value="countMakeupMakeer", allEntries=true),@CacheEvict(value="selectMakeupMakeerByid", allEntries=true)
	,@CacheEvict(value="selectMakeupWorks", allEntries=true),@CacheEvict(value="countMakeupWorks", allEntries=true)
	,@CacheEvict(value="aboutPhotoerWorks", allEntries=true)
	,@CacheEvict(value="selectPhotoerWorks", allEntries=true)
	,@CacheEvict(value="countPhotoerWorks", allEntries=true),@CacheEvict(value="aboutPhotoerWorks", allEntries=true)})
	public void clean(){
		System.out.println("photoerService.clean()!");
	}
}
