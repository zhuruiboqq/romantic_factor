package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.romantic.factor.common.util.PageHandler;
import com.romantic.factor.dao.MakeupWorksDao;
import com.romantic.factor.entity.MakeupWorks;

@Service
public class MakeupWorksService {
	@Autowired
	private MakeupWorksDao makeupWorksDao;

	@Cacheable(value = "selectMakeupWorks", key = "#p1+'_'+#p0.curPageIndex")
	public List<MakeupWorks> selectMakeupWorks(PageHandler pageHandler, int artistID) {
		if (pageHandler == null) {
			return null;
		}
		return makeupWorksDao.selectMakeupWorks(pageHandler.getStartIndex(), pageHandler.getPerPageSize(), artistID);
	}

	@Cacheable(value = "countMakeupWorks", key = "0")
	public int countMakeupWorks(int artistID) {
		return makeupWorksDao.countMakeupWorks(artistID);
	}

	@Cacheable(value = "aboutPhotoerWorks", key = "#p0")
	public List<MakeupWorks> aboutPhotoerWorks(MakeupWorks makeupWorks) {
		return makeupWorksDao.selectAllMakeupWorks(makeupWorks.getMakeer_id());
	}
}
