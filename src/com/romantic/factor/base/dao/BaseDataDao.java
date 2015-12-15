package com.romantic.factor.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.base.entity.BaseDataInfo;

public interface BaseDataDao<T extends BaseDataInfo> extends CoreDao<T>{
	public T selectByNumber(@Param("number") String number);
}
