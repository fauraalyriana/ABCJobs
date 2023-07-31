package com.abcjobs.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.abcjobs.model.Store;

public interface StoreRepository extends JpaRepository<Store, Long>{

	@Query(value = "SELECT name, address, email, contact, status FROM store WHERE id = :id", nativeQuery = true)
	public String getDetailsById(@Param("id") String id);
	
	@Query(value = "SELECT * FROM store WHERE email = :email", nativeQuery = true)
	Store login(@Param("email") String email);
	
	
	
	
	@Modifying
    @Transactional
    @Query(value = "UPDATE store SET name = :name WHERE id = :id", nativeQuery = true)
    void editName(@Param("id") Long id, @Param("name") String name);
	
}
