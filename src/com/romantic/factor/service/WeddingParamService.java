package com.romantic.factor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.romantic.factor.dao.WeddingParamDao;
import com.romantic.factor.entity.WeddingParam;

@Service
public class WeddingParamService {
	@Autowired
	private WeddingParamDao weddingParamDao;
	
	@Cacheable(value = "key", key = "0")
	public List<WeddingParam> getKeyValue(WeddingParam weddingParam){
		
		return weddingParamDao.getKeyValue(weddingParam);
	}
//	@Cacheable(value = "wedding_key")
//	public List<WeddingParam> getKeyValue2(String name){
//		System.out.println("qqqqqqq");
//		return weddingParamDao.getKeyValue2(name);
//	}
	
}
