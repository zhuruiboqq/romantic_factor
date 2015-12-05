package com.romantic.factor.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.entity.WeddingParam;

public interface WeddingParamDao {
	
	public List<WeddingParam> getKeyValue(WeddingParam weddingParam);
	
	public List<WeddingParam> getKeyValue2(@Param("key") String key);
}
