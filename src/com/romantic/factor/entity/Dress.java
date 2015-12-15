package com.romantic.factor.entity;

import com.romantic.factor.base.entity.BaseDataInfo;

public class Dress {
	private int id;
	private int photoer_id;
	private String img_url;
	private String name;
	private int type;
	private String degree;
	private int pageid;
	private int pageSize;
	private int priority;

	public int getPhotoer_id() {
		return photoer_id;
	}

	public void setPhotoer_id(int photoer_id) {
		this.photoer_id = photoer_id;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPageid() {
		return pageid;
	}

	public void setPageid(int pageid) {
		this.pageid = pageid;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}
}