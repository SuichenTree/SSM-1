package com.entity;

public class employee {
	private Integer User_id;
	private Integer Dept_id;
	private Integer Job_id;
	private String name;
	private Integer age;
	private String sex;
	private Integer phone;
	private String hobby;
	
	public employee(){}
	
	public employee(Integer user_id, Integer dept_id, Integer job_id,
			String name, Integer age, String sex, Integer phone, String hobby) {
		
		this.User_id = user_id;
		this.Dept_id = dept_id;
		this.Job_id = job_id;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.phone = phone;
		this.hobby = hobby;
	}

	
	
	public Integer getUser_id() {
		return User_id;
	}

	public void setUser_id(Integer user_id) {
		User_id = user_id;
	}

	public Integer getDept_id() {
		return Dept_id;
	}

	public void setDept_id(Integer dept_id) {
		Dept_id = dept_id;
	}

	public Integer getJob_id() {
		return Job_id;
	}

	public void setJob_id(Integer job_id) {
		Job_id = job_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getPhone() {
		return phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	@Override
	public String toString() {
		return "Employee [User_id=" + User_id + ", Dept_id=" + Dept_id
				+ ", Job_id=" + Job_id + ", name=" + name + ", age=" + age
				+ ", sex=" + sex + ", phone=" + phone + ", hobby=" + hobby
				+ "]";
	}
	
	
	
}
