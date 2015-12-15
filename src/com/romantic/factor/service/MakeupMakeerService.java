package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import com.romantic.factor.common.util.PageHandler;
import com.romantic.factor.dao.MakeupMakeerDao;
import com.romantic.factor.entity.MakeupMakeer;


public class MakeupMakeerService {
	@Autowired
	private MakeupMakeerDao makeupMakeerDao;
	
	@Cacheable(value = "selectMakeupMakeer", key = "#p0.curPageIndex")
	public List<MakeupMakeer> selectMakeupMakeer(PageHandler pageHandler){
		if(pageHandler==null){
			return null;
		}
		return makeupMakeerDao.selectMakeupMakeer(pageHandler.getStartIndex(),pageHandler.getPerPageSize());
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
