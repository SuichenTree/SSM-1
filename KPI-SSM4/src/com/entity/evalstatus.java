package com.entity;

import java.util.Date;

public class evalstatus {
	private Integer id;
	private Integer rel_no;
	private Integer emp_no;
	private String eval_status;
	private String creator;
	private Date createTime;
	private String creator_no;
	private String company_no;
	private Date limitTimeEnd;
	private Date limitTimeStart;
	
	public evalstatus(){}

	public evalstatus(Integer rel_no, Integer emp_no, String eval_status,
			String creator, Date createTime, String creator_no,
			String company_no, Date limitTimeEnd, Date limitTimeStart) {
		super();
		this.rel_no = rel_no;
		this.emp_no = emp_no;
		this.eval_status = eval_status;
		this.creator = creator;
		this.createTime = createTime;
		this.creator_no = creator_no;
		this.company_no = company_no;
		this.limitTimeEnd = limitTimeEnd;
		this.limitTimeStart = limitTimeStart;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getRel_no() {
		return rel_no;
	}

	public void setRel_no(Integer rel_no) {
		this.rel_no = rel_no;
	}

	public Integer getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(Integer emp_no) {
		this.emp_no = emp_no;
	}

	public String getEval_status() {
		return eval_status;
	}

	public void setEval_status(String eval_status) {
		this.eval_status = eval_status;
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

	public Date getLimitTimeEnd() {
		return limitTimeEnd;
	}

	public void setLimitTimeEnd(Date limitTimeEnd) {
		this.limitTimeEnd = limitTimeEnd;
	}

	public Date getLimitTimeStart() {
		return limitTimeStart;
	}

	public void setLimitTimeStart(Date limitTimeStart) {
		this.limitTimeStart = limitTimeStart;
	}

	@Override
	public String toString() {
		return "evalstatus [id=" + id + ", rel_no=" + rel_no + ", emp_no="
				+ emp_no + ", eval_status=" + eval_status + ", creator="
				+ creator + ", createTime=" + createTime + ", creator_no="
				+ creator_no + ", company_no=" + company_no + ", limitTimeEnd="
				+ limitTimeEnd + ", limitTimeStart=" + limitTimeStart + "]";
	}
	
	
}
