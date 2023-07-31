package com.abcjobs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="education")
public class Education {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "education_id")
	private Long education_id;
	
	@Column(name = "university_name")
	private String university_name;

	@Column(name = "Year")
	private int  Year;
	
	@Column(name = "Degree")
	private String Degree;
	
	@Column(name = "Grades")
	private String Grades;
	
	@Column(name = "achievement")
	private String achievement;
	
	
	public Education() {}
	public Education(Long education_id, String university_name, int year, String degree, String grades, String achievement) {
		
		
		this.education_id = education_id;
		this.university_name = university_name;
		Year = year;
		Degree = degree;
		Grades = grades;
		this.achievement = achievement;
	}
	public Long getEducation_id() {
		return education_id;
	}
	public void setEducation_id(Long education_id) {
		this.education_id = education_id;
	}
	public String getUniversity_name() {
		return university_name;
	}
	public void setUniversity_name(String university_name) {
		this.university_name = university_name;
	}
	public int getYear() {
		return Year;
	}
	public void setYear(int year) {
		Year = year;
	}
	public String getDegree() {
		return Degree;
	}
	public void setDegree(String degree) {
		Degree = degree;
	}
	public String getGrades() {
		return Grades;
	}
	public void setGrades(String grades) {
		Grades = grades;
	}
	public String getAchievement() {
		return achievement;
	}
	public void setAchievement(String achievement) {
		this.achievement = achievement;
	}
	
	
	
	
	
	
}