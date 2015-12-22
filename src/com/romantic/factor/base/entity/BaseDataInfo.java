package com.romantic.factor.base.entity;

import java.util.Date;

public class BaseDataInfo extends CoreInfo {
	private String name;
	private String number;
	private String simpleName;//简称
	private Date createTime;
	private long creator;
	private Date lastUpdateTime;
	private long lastUpdator;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getSimpleName() {
		return simpleName;
	}

	public void setSimpleName(String simpleName) {
		this.simpleName = simpleName;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public long getCreator() {
		return creator;
	}

	public void setCreator(long creator) {
		this.creator = creator;
	}

	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}

	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public long getLastUpdator() {
		return lastUpdator;
	}

	public void setLastUpdator(long lastUpdator) {
		this.lastUpdator = lastUpdator;
	}

}