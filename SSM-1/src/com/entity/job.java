package com.entity;

public class job {
		private Integer id;
		private String jobname;
		
		public job(){}
		
		public job(Integer id,String jobname){
			this.id=id;
			this.jobname=jobname;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getJobname() {
			return jobname;
		}

		public void setJobname(String jobname) {
			this.jobname = jobname;
		}

		@Override
		public String toString() {
			return "Job [id=" + id + ", jobname=" + jobname + "]";
		}
		
		
}
