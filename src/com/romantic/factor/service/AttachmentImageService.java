package com.romantic.factor.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import com.romantic.factor.common.util.PageHandler;
import com.romantic.factor.dao.AttachmentImageDao;
import com.romantic.factor.entity.AttachmentImageInfo;

public class AttachmentImageService {
	@Autowired
	private AttachmentImageDao dao;

	@Cacheable(value = "attachmentImageService.selectByArtist", key = "#p1+'_'+#p0.curPageIndex")
	public List<AttachmentImageInfo> selectByArtist(PageHandler pageHandler, long artistID) {
		if (pageHandler == null) {
			return null;
		}
		return dao.selectByArtist(pageHandler.getStartIndex(), pageHandler.getPerPageSize(), artistID);
	}

	@Cacheable(value = "attachmentImageService.countByArtist", key = "#p0")
	public int countByArtist(long artistID) {
		return dao.countByArtist(artistID);
	}

	public List<AttachmentImageInfo> selectAllByArtist(long artistID) {
		return dao.selectAllByArtist(artistID);
	}

	public int add(AttachmentImageInfo info) {
		return dao.add(info);
	}

	public int deleteByID(long id) {
		return dao.deleteByID(id);
	}

	public int update(AttachmentImageInfo info) {
		return dao.update(info);
	}

	public AttachmentImageInfo selectByID(@Param("id") long id) {
		return dao.selectByID(id);
	}

	public int deleteById(long id) {
		return dao.deleteById(id);
	}

	public List<AttachmentImageInfo> selectAll2() {
		return dao.selectAll2();
	}
}