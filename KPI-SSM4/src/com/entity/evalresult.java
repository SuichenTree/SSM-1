package com.entity;

import java.util.Date;

public class evalresult {
	private Integer id;
	private Integer rel_no;
	private String result_json;
	private Double score;
	private Date evalTime;
	private Integer emp_no;
	private String isSelfEval;
	private String company_no;

	public evalresult(){}

	public evalresult(Integer rel_no, String result_json, Double score,
			Date evalTime, Integer emp_no, String isSelfEval, String company_no) {
		super();
		this.rel_no = rel_no;
		this.result_json = result_json;
		this.score = score;
		this.evalTime = evalTime;
		this.emp_no = emp_no;
		this.isSelfEval = isSelfEval;
		this.company_no = company_no;
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

	public String getResult_json() {
		return result_json;
	}

	public void setResult_json(String result_json) {
		this.result_json = result_json;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Date getEvalTime() {
		return evalTime;
	}

	public void setEvalTime(Date evalTime) {
		this.evalTime = evalTime;
	}

	public Integer getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(Integer emp_no) {
		this.emp_no = emp_no;
	}

	public String getIsSelfEval() {
		return isSelfEval;
	}

	public void setIsSelfEval(String isSelfEval) {
		this.isSelfEval = isSelfEval;
	}

	public String getCompany_no() {
		return company_no;
	}

	public void setCompany_no(String company_no) {
		this.company_no = company_no;
	}

	@Override
	public String toString() {
		return "evalresult [id=" + id + ", rel_no=" + rel_no + ", result_json="
				+ result_json + ", score=" + score + ", evalTime=" + evalTime
				+ ", emp_no=" + emp_no + ", isSelfEval=" + isSelfEval
				+ ", company_no=" + company_no + "]";
	}
	
	

}
