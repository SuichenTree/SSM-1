package com.entity;

public class evalrelation {
	private Integer id;
	private Integer project_no;
	private Integer form_no;
	private Integer leader_no;
	private Integer emp_no;
	private String status;
	private Double selfScore;
	private Double leaderScore;
	private Double totalScore;
	private String company_no;
	
	public evalrelation(){}

	public evalrelation(Integer project_no, Integer form_no, Integer leader_no,
			Integer emp_no, String status, Double selfScore,
			Double leaderScore, Double totalScore, String company_no) {
		super();
		this.project_no = project_no;
		this.form_no = form_no;
		this.leader_no = leader_no;
		this.emp_no = emp_no;
		this.status = status;
		this.selfScore = selfScore;
		this.leaderScore = leaderScore;
		this.totalScore = totalScore;
		this.company_no = company_no;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProject_no() {
		return project_no;
	}

	public void setProject_no(Integer project_no) {
		this.project_no = project_no;
	}

	public Integer getForm_no() {
		return form_no;
	}

	public void setForm_no(Integer form_no) {
		this.form_no = form_no;
	}

	public Integer getLeader_no() {
		return leader_no;
	}

	public void setLeader_no(Integer leader_no) {
		this.leader_no = leader_no;
	}

	public Integer getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(Integer emp_no) {
		this.emp_no = emp_no;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Double getSelfScore() {
		return selfScore;
	}

	public void setSelfScore(Double selfScore) {
		this.selfScore = selfScore;
	}

	public Double getLeaderScore() {
		return leaderScore;
	}

	public void setLeaderScore(Double leaderScore) {
		this.leaderScore = leaderScore;
	}

	public Double getTotalScore() {
		return totalScore;
	}

	public void setTotalScore(Double totalScore) {
		this.totalScore = totalScore;
	}

	public String getCompany_no() {
		return company_no;
	}

	public void setCompany_no(String company_no) {
		this.company_no = company_no;
	}

	@Override
	public String toString() {
		return "evalrelation [id=" + id + ", project_no=" + project_no
				+ ", form_no=" + form_no + ", leader_no=" + leader_no
				+ ", emp_no=" + emp_no + ", status=" + status + ", selfScore="
				+ selfScore + ", leaderScore=" + leaderScore + ", totalScore="
				+ totalScore + ", company_no=" + company_no + "]";
	}
	
	
}
