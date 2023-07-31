package com.abcjobs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abcjobs.model.Store;
import com.abcjobs.repository.StoreRepository;

@Service
@Transactional
public class StoreService{
	@Autowired
	StoreRepository repo;

	public List<Store> listAll() {
		return repo.findAll();
	}
	
	
	public Store register(Store store) {
		return repo.save(store);
	}
	
	
	public Store login(String email) {
		try {
			Store login = repo.login(email);
			return login;
		} catch (Exception e) {
			System.out.println("Credential is null " + e);
			return null;
		}
		
	}
	
	public String getDetailsById(String id) {
		return repo.getDetailsById(id);
	} 
	
	public void editName(Long id, String name) {
		
		repo.editName(id, name);
		
	}

}
