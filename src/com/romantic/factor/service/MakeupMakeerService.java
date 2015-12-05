package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import com.romantic.factor.dao.MakeupMakeerDao;
import com.romantic.factor.entity.MakeupMakeer;


public class MakeupMakeerService {
	@Autowired
	private MakeupMakeerDao makeupMakeerDao;
	
	@Cacheable(value = "selectMakeupMakeer", key = "#p0.pageid")
	public List<MakeupMakeer> selectMakeupMakeer(MakeupMakeer makeupMakeer){
		if(makeupMakeer==null){
			return null;
		}
		return makeupMakeerDao.selectMakeupMakeer(makeupMakeer.getPageid(),makeupMakeer.getPageSize());
	}
	@Cacheable(value = "countMakeupMakeer", key = "0")
	public int countMakeupMakeer(){
		
		return makeupMakeerDao.countMakeupMakeer();
	}
	@Cacheable(value = "selectMakeupMakeerByid", key = "#p0")
	public MakeupMakeer selectMakeupMakeerByid(int id){
		return makeupMakeerDao.selectMakeupMakeerByid(id);
	}
	
}
