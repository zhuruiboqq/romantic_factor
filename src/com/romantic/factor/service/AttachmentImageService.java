package com.romantic.factor.service;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.imageio.ImageIO;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.romantic.factor.common.util.PageHandler;
import com.romantic.factor.controller.DisplayController;
import com.romantic.factor.dao.AttachmentImageDao;
import com.romantic.factor.entity.AttachmentImageInfo;
import com.romantic.factor.util.FileUtil;
import com.romantic.factor.util.io.ImageFileFilter;

@Service
public class AttachmentImageService {
	private static Logger logger = LoggerFactory.getLogger(AttachmentImageService.class);
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

	private int count;

	public int initImageData(File rootPath) {
		count = 0;
		long startTime = System.currentTimeMillis();
		logger.info("start init image at:" + rootPath);
		if (rootPath != null && rootPath.isDirectory()) {

			processImageFile(rootPath, new File(rootPath, "upload"));
		}
		logger.info("end init image in " + (System.currentTimeMillis() - startTime) / 1000 + "s, total:" + count);
		return count;
	}

	/**
	 * @param rootPath 根文件夹
	 * @param curPath 当前文件夹
	 */
	private void processImageFile(File rootPath, File curPath) {
		File[] listFiles = curPath.listFiles(new ImageFileFilter());
		for (File file : listFiles) {
			if (file.isDirectory()) {
				processImageFile(rootPath, file);
			} else {
				try {
					BufferedImage srcImage = ImageIO.read(file);

					AttachmentImageInfo attachmentImageInfo = new AttachmentImageInfo();
					attachmentImageInfo.setName(file.getName());
					attachmentImageInfo.setCreateTime(new Date());
					attachmentImageInfo.setCreator(1);
					attachmentImageInfo.setLastUpdateTime(new Date());
					attachmentImageInfo.setLastUpdator(1);
					attachmentImageInfo.setStorePath(file.getPath());
					attachmentImageInfo.setDisplayURL(file.getPath().toString().substring(rootPath.toString().length() + 1).replace("\\", "/"));
					attachmentImageInfo.setSizeInByte(file.length());
					attachmentImageInfo.setSize(FileUtil.getFileLength(file.length()));
					attachmentImageInfo.setExtName(FileUtil.getExtendName(file.getName()));
					attachmentImageInfo.setWidth(srcImage.getWidth());
					attachmentImageInfo.setHeight(srcImage.getHeight());

					add(attachmentImageInfo);
					count++;
				} catch (IOException e) {
					e.printStackTrace();
				}

			}
		}
	}
}