package com.abcjobs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abcjobs.model.Education;
import com.abcjobs.model.Information;
import com.abcjobs.model.User;
import com.abcjobs.repository.EducationRepository;
import com.abcjobs.repository.InformationRepository;
import com.abcjobs.repository.UserRepository;

@Service
@Transactional
public class UserService{
	@Autowired
	UserRepository repo;
	
	@Autowired
	InformationRepository IR;
	
	@Autowired
	EducationRepository ER;

	public List<User> listAll() {
		return repo.findAll();
	}
	
	
	public User register(User user) {
		return repo.save(user);
	}
	
	
	public User login(String email, String password) {
		try {
			User login = repo.login(email, password);
			return login;
		} catch (Exception e) {
			System.out.println("Credential is null " + e);
			return null;
		}
		
	}
	
	public String getDetailsById(Long id) {
		return repo.getDetailsById(id);
	} 
	
	public void updateProfil(Long id, String name, String email, String address, int age, String username) {
		
		repo.updateProfil(id, name, email, address, age, username);
		
	}
	
	public void insertInformation(Long id) {
		IR.insertInformation(id);
	}
	
	
	public void updateInformation(Long id, String about_me, String company, String title, String website) {
		IR.updateInformation(id, about_me, company, title, website);
		
	}
	
	public String getInformationById(Long id) {
		return IR.getInformById(id);
	} 
	
	
	public void addEdu(Long id, String UnivName, int year, String degree, String grades, String achievement ) {
		ER.addducation(id,UnivName,year,degree,grades,achievement);
	}
	
	public List<Education[]> getAllEdu(Long id){
		return ER.getEduById(id);
	}
	
	
	public List<User> searchByKey(String key) {
		return repo.searchByKey(key);
	}
	
	public String getUserObject(Long id) {
		return repo.getUserObject(id);
	}
	
	public String getInformObject(Long id) {
		return IR.getInformObject(id);
	}
	
	public String checkEmail(String email) {
		return repo.checkEmail(email);
	}
	
	public User updatePassword(String password, String email) {
		Long user_id = Long.parseLong(repo.checkEmail(email).split(",")[0]);
		User user = repo.findById(user_id).get();
		
		// update 
		user.setPassword(password);
		
		// save
		return repo.save(user);
	}
}
