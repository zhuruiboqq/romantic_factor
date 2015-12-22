package com.romantic.factor.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.romantic.factor.entity.AttachmentImageInfo;

public interface AttachmentImageDao {
	public List<AttachmentImageInfo> selectByArtist(@Param("startIndex") int startIndex, @Param("perPageSize") int perPageSize,
			@Param("artistID") long artistID);

	public int countByArtist(@Param("artistID") long artistID);

	public List<AttachmentImageInfo> selectAllByArtist(@Param("artistID") long artistID);


	public int add(AttachmentImageInfo info);

	public int deleteByID(@Param("id") long id);
	
	public int update(AttachmentImageInfo info);
	
	public AttachmentImageInfo selectByID(@Param("id") long id);

//	@Insert("insert into users(name, age) values(#{name}, #{age})")
//	public int add(User user);
	@Delete("delete from t_bas_AttachmentImage where id=#{id}")
	public int deleteById(long id);
	
//	@Update("update users set name=#{name},age=#{age} where id=#{id}")
//	public int update(User user);
	@Select("select * from t_bas_AttachmentImage")
	public List<AttachmentImageInfo> selectAll2();
}
