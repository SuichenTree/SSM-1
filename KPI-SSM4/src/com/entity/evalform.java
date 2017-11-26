package com.entity;

import java.util.Date;

public class evalform {
	private Integer id;
	private String content_json;
	private String form_status;
	private Integer project_no;
	private String creator;
	private Date createTime;
	private String creator_no;
	private String company_no;
	
	public evalform(){}

	public evalform(String content_json, String form_status,
			Integer project_no, String creator, Date createTime,
			String creator_no, String company_no) {
		super();
		this.content_json = content_json;
		this.form_status = form_status;
		this.project_no = project_no;
		this.creator = creator;
		this.createTime = createTime;
		this.creator_no = creator_no;
		this.company_no = company_no;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContent_json() {
		return content_json;
	}

	public void setContent_json(String content_json) {
		this.content_json = content_json;
	}

	public String getForm_status() {
		return form_status;
	}

	public void setForm_status(String form_status) {
		this.form_status = form_status;
	}

	public Integer getProject_no() {
		return project_no;
	}

	public void setProject_no(Integer project_no) {
		this.project_no = project_no;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreator_no() {
		return creator_no;
	}

	public void setCreator_no(String creator_no) {
		this.creator_no = creator_no;
	}

	public String getCompany_no() {
		return company_no;
	}

	public void setCompany_no(String company_no) {
		this.company_no = company_no;
	}

	@Override
	public String toString() {
		return "evalform [id=" + id + ", content_json=" + content_json
				+ ", form_status=" + form_status + ", project_no=" + project_no
				+ ", creator=" + creator + ", createTime=" + createTime
				+ ", creator_no=" + creator_no + ", company_no=" + company_no
				+ "]";
	}
	
	
}
