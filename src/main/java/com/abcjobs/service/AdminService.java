package com.abcjobs.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobs.model.Administration;
import com.abcjobs.repository.AdminRepository;


@Service
@Transactional
public class AdminService {
	@Autowired
	AdminRepository AR;
	
	public Administration login(String name, String password) {
		try {
			Administration login = AR.login(name, password);
			return login;
		} catch (Exception e) {
			System.out.println("Credential is null " + e);
			return null;
		}
		
	}

	public List<Object[]> listAllUser(){
		return AR.listAllUser();
	}
	
	
	public void deleteUser(Long id) {
		AR.deleteById(id);
	}
}
