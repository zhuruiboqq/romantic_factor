package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import com.romantic.factor.dao.DressDao;
import com.romantic.factor.entity.Dress;


public class DressService {
	@Autowired
	private DressDao dressDao;
	
	@Cacheable(value = "selectDress", key = "#p0.type+'_'+#p0.pageid")
	public List<Dress> selectDress(Dress dress){
		if(dress==null){
			return null;
		}
		return dressDao.selectDress(dress.getPageid(),dress.getPageSize(),dress.getType());
	}
	@Cacheable(value = "countDress", key = "0")
	public int countDress(Dress dress){
		
		return dressDao.countDress(dress.getType());
	}
}
