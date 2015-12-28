package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.romantic.factor.common.util.PageHandler;
import com.romantic.factor.dao.DressDao;
import com.romantic.factor.entity.Dress;


@Service
public class DressService {
	@Autowired
	private DressDao dressDao;
	
	@Cacheable(value = "selectDress", key = "#p1+'_'+#p0.curPageIndex")
	public List<Dress> selectDress(PageHandler pageHandler, int artistID){
		if(pageHandler==null){
			return null;
		}
		return dressDao.selectDress(pageHandler.getStartIndex(), pageHandler.getPerPageSize(),artistID);
	}
	@Cacheable(value = "countDress", key = "0")
	public int countDress(int artistID){
		
		return dressDao.countDress(artistID);
	}
}
