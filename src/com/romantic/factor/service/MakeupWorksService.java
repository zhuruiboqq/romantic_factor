package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import com.romantic.factor.dao.MakeupWorksDao;
import com.romantic.factor.entity.MakeupWorks;


public class MakeupWorksService {
	@Autowired
	private MakeupWorksDao makeupWorksDao;
	
	@Cacheable(value = "selectMakeupWorks", key = "#p0.makeer_id+'_'+#p0.pageid")
	public List<MakeupWorks> selectMakeupWorks(MakeupWorks makeupWorks){
		if(makeupWorks==null){
			return null;
		}
		return makeupWorksDao.selectMakeupWorks(makeupWorks.getPageid(),makeupWorks.getPageSize(),makeupWorks.getMakeer_id());
	}
	@Cacheable(value = "countMakeupWorks", key = "0")
	public int countMakeupWorks(int makeer_id){
		
		return makeupWorksDao.countMakeupWorks(makeer_id);
	}
	@Cacheable(value = "aboutPhotoerWorks", key = "#p0")
	public List<MakeupWorks> aboutPhotoerWorks(MakeupWorks makeupWorks){
		return makeupWorksDao.selectAllMakeupWorks(makeupWorks.getMakeer_id());
	}
}
