package com.entity;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class employee {
	private Integer id;
	private Integer work_no;
	private String name;
	private String dept;
	private String post;
	private String phone;
	private String email;
	private String id_no;
	private String wechat_no;
	
	
	private String hireDate;
	
	
	private String isActive;
	private String creator;
	private String createTime;
	private String creator_no;
	private String company_no;
	private String wechar_union_id;
	
	//无参构造函数
	public employee(){}

	//有参构造函数（无id，因为id自动增长）
	public employee(Integer work_no, String name, String dept, String post,
			String phone, String email, String id_no, String wechat_no,
			String hireDate, String isActive, String creator, String createTime,
			String creator_no, String company_no, String wechar_union_id) {
		super();
		this.work_no = work_no;
		this.name = name;
		this.dept = dept;
		this.post = post;
		this.phone = phone;
		this.email = email;
		this.id_no = id_no;
		this.wechat_no = wechat_no;
		this.hireDate = hireDate;
		this.isActive = isActive;
		this.creator = creator;
		this.createTime = createTime;
		this.creator_no = creator_no;
		this.company_no = company_no;
		this.wechar_union_id = wechar_union_id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getWork_no() {
		return work_no;
	}

	public void setWork_no(Integer work_no) {
		this.work_no = work_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId_no() {
		return id_no;
	}

	public void setId_no(String id_no) {
		this.id_no = id_no;
	}

	public String getWechat_no() {
		return wechat_no;
	}

	public void setWechat_no(String wechat_no) {
		this.wechat_no = wechat_no;
	}

	public String getHireDate() {
		return hireDate;
	}

	public void setHireDate(String hireDate) {
		this.hireDate =  hireDate;
	}


	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime =  createTime;
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

	public String getWechar_union_id() {
		return wechar_union_id;
	}

	public void setWechar_union_id(String wechar_union_id) {
		this.wechar_union_id = wechar_union_id;
	}

	@Override
	public String toString() {
		return "employee [id=" + id + ", work_no=" + work_no + ", name=" + name
				+ ", dept=" + dept + ", post=" + post + ", phone=" + phone
				+ ", email=" + email + ", id_no=" + id_no + ", wechat_no="
				+ wechat_no + ", hireDate=" + hireDate + ", isActive="
				+ isActive + ", creator=" + creator + ", createTime="
				+ createTime + ", creator_no=" + creator_no + ", company_no="
				+ company_no + ", wechar_union_id=" + wechar_union_id + "]";
	}
	
	 
	
	
}
