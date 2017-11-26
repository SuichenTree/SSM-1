package com.entity;

import java.util.Date;

public class user {
		private String guid;
		private String activate;
		private Date activateDate;
		private String checkCode;
		private Date createDate;
		private String departmentId;
		private String departmentName;
		private Date lastLoginDate;
		private Date firstTimeLoginDate;
		private String phone;
		private String status;
		private String userName;
		private String realName;
		private String userPassword;
		private String userType;
		private String company_no;
		private String role_no;
		
		public user(){}

		public user(String guid, String activate, Date activateDate,
				String checkCode, Date createDate, String departmentId,
				String departmentName, Date lastLoginDate,
				Date firstTimeLoginDate, String phone, String status,
				String userName, String realName, String userPassword,
				String userType, String company_no, String role_no) {
			super();
			this.guid = guid;
			this.activate = activate;
			this.activateDate = activateDate;
			this.checkCode = checkCode;
			this.createDate = createDate;
			this.departmentId = departmentId;
			this.departmentName = departmentName;
			this.lastLoginDate = lastLoginDate;
			this.firstTimeLoginDate = firstTimeLoginDate;
			this.phone = phone;
			this.status = status;
			this.userName = userName;
			this.realName = realName;
			this.userPassword = userPassword;
			this.userType = userType;
			this.company_no = company_no;
			this.role_no = role_no;
		}

		public String getGuid() {
			return guid;
		}

		public void setGuid(String guid) {
			this.guid = guid;
		}

		public String getActivate() {
			return activate;
		}

		public void setActivate(String activate) {
			this.activate = activate;
		}

		public Date getActivateDate() {
			return activateDate;
		}

		public void setActivateDate(Date activateDate) {
			this.activateDate = activateDate;
		}

		public String getCheckCode() {
			return checkCode;
		}

		public void setCheckCode(String checkCode) {
			this.checkCode = checkCode;
		}

		public Date getCreateDate() {
			return createDate;
		}

		public void setCreateDate(Date createDate) {
			this.createDate = createDate;
		}

		public String getDepartmentId() {
			return departmentId;
		}

		public void setDepartmentId(String departmentId) {
			this.departmentId = departmentId;
		}

		public String getDepartmentName() {
			return departmentName;
		}

		public void setDepartmentName(String departmentName) {
			this.departmentName = departmentName;
		}

		public Date getLastLoginDate() {
			return lastLoginDate;
		}

		public void setLastLoginDate(Date lastLoginDate) {
			this.lastLoginDate = lastLoginDate;
		}

		public Date getFirstTimeLoginDate() {
			return firstTimeLoginDate;
		}

		public void setFirstTimeLoginDate(Date firstTimeLoginDate) {
			this.firstTimeLoginDate = firstTimeLoginDate;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public String getUserName() {
			return userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		public String getRealName() {
			return realName;
		}

		public void setRealName(String realName) {
			this.realName = realName;
		}

		public String getUserPassword() {
			return userPassword;
		}

		public void setUserPassword(String userPassword) {
			this.userPassword = userPassword;
		}

		public String getUserType() {
			return userType;
		}

		public void setUserType(String userType) {
			this.userType = userType;
		}

		public String getCompany_no() {
			return company_no;
		}

		public void setCompany_no(String company_no) {
			this.company_no = company_no;
		}

		public String getRole_no() {
			return role_no;
		}

		public void setRole_no(String role_no) {
			this.role_no = role_no;
		}

		@Override
		public String toString() {
			return "user [guid=" + guid + ", activate=" + activate
					+ ", activateDate=" + activateDate + ", checkCode="
					+ checkCode + ", createDate=" + createDate
					+ ", departmentId=" + departmentId + ", departmentName="
					+ departmentName + ", lastLoginDate=" + lastLoginDate
					+ ", firstTimeLoginDate=" + firstTimeLoginDate + ", phone="
					+ phone + ", status=" + status + ", userName=" + userName
					+ ", realName=" + realName + ", userPassword="
					+ userPassword + ", userType=" + userType + ", company_no="
					+ company_no + ", role_no=" + role_no + "]";
		}
		
		
}
