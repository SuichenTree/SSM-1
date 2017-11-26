package com.entity;

public class rolepermissions {
		private String guid;
		private String company_no;
		private String permission_no;
		private String role_no;
		
		public rolepermissions(){}

		public rolepermissions(String guid, String company_no,
				String permission_no, String role_no) {
			super();
			this.guid = guid;
			this.company_no = company_no;
			this.permission_no = permission_no;
			this.role_no = role_no;
		}

		public String getGuid() {
			return guid;
		}

		public void setGuid(String guid) {
			this.guid = guid;
		}

		public String getCompany_no() {
			return company_no;
		}

		public void setCompany_no(String company_no) {
			this.company_no = company_no;
		}

		public String getPermission_no() {
			return permission_no;
		}

		public void setPermission_no(String permission_no) {
			this.permission_no = permission_no;
		}

		public String getRole_no() {
			return role_no;
		}

		public void setRole_no(String role_no) {
			this.role_no = role_no;
		}

		@Override
		public String toString() {
			return "rolepermissions [guid=" + guid + ", company_no="
					+ company_no + ", permission_no=" + permission_no
					+ ", role_no=" + role_no + "]";
		}
		
		
}
