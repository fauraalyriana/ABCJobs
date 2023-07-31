package com.abcjobs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="information")
public class Information {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "information_id")
	private Long information_id;
	
	@Column(name = "about_me")
	private String about_me;
	
	@Column(name = "company")
	private String company;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "website")
	private String website;
	
	public Information() {}
	public Information(Long information_id, String about_me, String company, String title, String website) {
		this.information_id = information_id;
		this.about_me = about_me;
		this.company = company;
		this.title = title;
		this.website = website;
	}
	public Long getInformation_id() {
		return information_id;
	}
	public void setInformation_id(Long information_id) {
		this.information_id = information_id;
	}
	public String getAbout_me() {
		return about_me;
	}
	public void setAbout_me(String about_me) {
		this.about_me = about_me;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	
	
}
