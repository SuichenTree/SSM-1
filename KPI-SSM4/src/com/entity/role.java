package com.entity;

public class role {
		private String guid;
		private String name;
		private String fields;
		private Integer roleType;
		private String company_no;
		
		public role(){}

		public role(String guid, String name, String fields, Integer roleType,
				String company_no) {
			super();
			this.guid = guid;
			this.name = name;
			this.fields = fields;
			this.roleType = roleType;
			this.company_no = company_no;
		}

		public String getGuid() {
			return guid;
		}

		public void setGuid(String guid) {
			this.guid = guid;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getFields() {
			return fields;
		}

		public void setFields(String fields) {
			this.fields = fields;
		}

		public Integer getRoleType() {
			return roleType;
		}

		public void setRoleType(Integer roleType) {
			this.roleType = roleType;
		}

		public String getCompany_no() {
			return company_no;
		}

		public void setCompany_no(String company_no) {
			this.company_no = company_no;
		}

		@Override
		public String toString() {
			return "role [guid=" + guid + ", name=" + name + ", fields="
					+ fields + ", roleType=" + roleType + ", company_no="
					+ company_no + "]";
		}
		
		
}
