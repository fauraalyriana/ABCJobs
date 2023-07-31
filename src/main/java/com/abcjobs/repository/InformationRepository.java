package com.abcjobs.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.abcjobs.model.Information;

public interface InformationRepository extends JpaRepository<Information, Long> { 
	
	@Modifying
	@Transactional
	@Query(value = "INSERT INTO information (user_id) VALUES (:user_id)", nativeQuery = true)
	void insertInformation(@Param("user_id") Long user_id);
	
	@Modifying
    @Transactional
    @Query(value = "UPDATE information SET about_me = :about_me, company= :company, title= :title, website= :website WHERE user_id = :user_id", nativeQuery = true)
    void updateInformation(@Param("user_id") Long id, @Param("about_me") String about_me, @Param("company") String company, @Param("title") String title, @Param("website") String website);

	
	@Query(value = "SELECT about_me, company, title, website FROM information WHERE user_id = :user_id", nativeQuery = true)
	public String getInformById(@Param("user_id") Long id);

	@Query(value = "SELECT about_me, company, title, website FROM information WHERE user_id = :user_id", nativeQuery = true)
	public String getInformObject(@Param("user_id") Long id);

}
