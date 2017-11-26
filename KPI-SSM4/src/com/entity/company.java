package com.entity;

public class company {
	private Integer id;
	private String guid;
	private String code;
	private String name;
	private String address;
	private String contacts;
	private String fax;
	private String tel;
	
	public company(){}

	public company(String guid, String code, String name, String address,
			String contacts, String fax, String tel) {
		super();
		this.guid = guid;
		this.code = code;
		this.name = name;
		this.address = address;
		this.contacts = contacts;
		this.fax = fax;
		this.tel = tel;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "company [id=" + id + ", guid=" + guid + ", code=" + code
				+ ", name=" + name + ", address=" + address + ", contacts="
				+ contacts + ", fax=" + fax + ", tel=" + tel + "]";
	}
	
	
}
