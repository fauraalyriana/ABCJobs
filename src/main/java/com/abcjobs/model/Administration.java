package com.abcjobs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "administration")
public class Administration {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "admin_id")
	private Long admin_id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "password")
	private String password;

	
	public Administration() {}
	
	public Administration(Long admin_id, String name, String password) {
		this.admin_id = admin_id;
		this.name = name;
		this.password = password;
	}
	public Long getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(Long admin_id) {
		this.admin_id = admin_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

	
	
}
