package com.romantic.factor.entity;

import java.util.Date;

import com.romantic.factor.util.DateUtil;

public class MakeupWorks {
	private int id;
	private int makeer_id;
	private Date date;
	private String type;
	private String img_url;
	private int pageid;
	private int pageSize;
	private String day;
	private int priority;
	
	
	
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getMakeer_id() {
		return makeer_id;
	}
	public void setMakeer_id(int makeer_id) {
		this.makeer_id = makeer_id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
}
