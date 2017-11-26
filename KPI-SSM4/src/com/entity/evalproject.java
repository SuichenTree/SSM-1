 package com.entity;

import java.util.Date;

public class evalproject {
   private Integer id;
   private String title;
   private String organizer;
   private String type;        //Character是char的包装类
   private String typeDateStart;
   private String typeDateEnd;
   private String object;
   private String purpose;
   private Double weightA;
   private Double weightB;
   private Double threshold;
   private String startDate;
   private String endDate;
   private String rules;
   private String project_status;
   private String creator;
   private String createTime;
   private String creator_no;
   private String sender;
   private String sendTime;
   private String sender_no;
   private String company_no;
   
   public evalproject(){}

public evalproject(String title, String organizer, String type,
		String typeDateStart, String typeDateEnd, String object,
		String purpose, Double weightA, Double weightB, Double threshold,
		String startDate, String endDate, String rules, String project_status,
		String creator, String createTime, String creator_no, String sender,
		String sendTime, String sender_no, String company_no) {
	super();
	this.title = title;
	this.organizer = organizer;
	this.type = type;
	this.typeDateStart = typeDateStart;
	this.typeDateEnd = typeDateEnd;
	this.object = object;
	this.purpose = purpose;
	this.weightA = weightA;
	this.weightB = weightB;
	this.threshold = threshold;
	this.startDate = startDate;
	this.endDate = endDate;
	this.rules = rules;
	this.project_status = project_status;
	this.creator = creator;
	this.createTime = createTime;
	this.creator_no = creator_no;
	this.sender = sender;
	this.sendTime = sendTime;
	this.sender_no = sender_no;
	this.company_no = company_no;
}

public Integer getId() {
	return id;
}

public void setId(Integer id) {
	this.id = id;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getOrganizer() {
	return organizer;
}

public void setOrganizer(String organizer) {
	this.organizer = organizer;
}

public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}

public String getTypeDateStart() {
	return typeDateStart;
}

public void setTypeDateStart(String typeDateStart) {
	this.typeDateStart = typeDateStart;
}

public String getTypeDateEnd() {
	return typeDateEnd;
}

public void setTypeDateEnd(String typeDateEnd) {
	this.typeDateEnd = typeDateEnd;
}

public String getObject() {
	return object;
}

public void setObject(String object) {
	this.object = object;
}

public String getPurpose() {
	return purpose;
}

public void setPurpose(String purpose) {
	this.purpose = purpose;
}

public Double getWeightA() {
	return weightA;
}

public void setWeightA(Double weightA) {
	this.weightA = weightA;
}

public Double getWeightB() {
	return weightB;
}

public void setWeightB(Double weightB) {
	this.weightB = weightB;
}

public Double getThreshold() {
	return threshold;
}

public void setThreshold(Double threshold) {
	this.threshold = threshold;
}

public String getStartDate() {
	return startDate;
}

public void setStartDate(String startDate) {
	this.startDate = startDate;
}

public String getEndDate() {
	return endDate;
}

public void setEndDate(String endDate) {
	this.endDate = endDate;
}

public String getRules() {
	return rules;
}

public void setRules(String rules) {
	this.rules = rules;
}

public String getProject_status() {
	return project_status;
}

public void setProject_status(String project_status) {
	this.project_status = project_status;
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
	this.createTime = createTime;
}

public String getCreator_no() {
	return creator_no;
}

public void setCreator_no(String creator_no) {
	this.creator_no = creator_no;
}

public String getSender() {
	return sender;
}

public void setSender(String sender) {
	this.sender = sender;
}

public String getSendTime() {
	return sendTime;
}

public void setSendTime(String sendTime) {
	this.sendTime = sendTime;
}

public String getSender_no() {
	return sender_no;
}

public void setSender_no(String sender_no) {
	this.sender_no = sender_no;
}

public String getCompany_no() {
	return company_no;
}

public void setCompany_no(String company_no) {
	this.company_no = company_no;
}

@Override
public String toString() {
	return "evalproject [id=" + id + ", title=" + title + ", organizer="
			+ organizer + ", type=" + type + ", typeDateStart=" + typeDateStart
			+ ", typeDateEnd=" + typeDateEnd + ", object=" + object
			+ ", purpose=" + purpose + ", weightA=" + weightA + ", weightB="
			+ weightB + ", threshold=" + threshold + ", startDate=" + startDate
			+ ", endDate=" + endDate + ", rules=" + rules + ", project_status="
			+ project_status + ", creator=" + creator + ", createTime="
			+ createTime + ", creator_no=" + creator_no + ", sender=" + sender
			+ ", sendTime=" + sendTime + ", sender_no=" + sender_no
			+ ", company_no=" + company_no + "]";
}
   
   

}