package com.romantic.factor.entity;

import java.util.Date;

import com.romantic.factor.util.DateUtil;

public class PhotoerWorks {
	private int id;
	private int photoer_id;
	private Date date;
	private String address;
	private String img_url;
	private int pageid;
	private int pageSize;
	private String day;
	private int priority;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPhotoer_id() {
		return photoer_id;
	}
	public void setPhotoer_id(int photoer_id) {
		this.photoer_id = photoer_id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getDay() {
		if(this.date!=null){
			day=DateUtil.formatDate(this.date,DateUtil.DAY_FORMAT);
			return day;
		}
		return day;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	
	
	
}
