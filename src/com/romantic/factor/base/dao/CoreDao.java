package com.romantic.factor.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.romantic.factor.base.entity.CoreInfo;

public interface CoreDao<T extends CoreInfo> {
	public T selectByID(@Param("id") String id);

	public List<T> selectList(@Param("startIndex") int startIndex, @Param("perPageSize") int perPageSize, @Param("whereSql") String whereSql);

	public List<T> selectListOrder(@Param("startIndex") int startIndex, @Param("perPageSize") int perPageSize, @Param("whereSql") String whereSql,
			@Param("orderSql") String orderSql);

	public int countList(@Param("whereSql") String whereSql);

	public List<T> selectAll();
}
