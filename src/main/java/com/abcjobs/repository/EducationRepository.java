package com.abcjobs.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.abcjobs.model.Education;

public interface EducationRepository extends JpaRepository<Education, Long> { 
	
	@Modifying
	@Transactional
	@Query(value = "INSERT INTO education (user_id, university_name, year, degree, grades, achievement) VALUES (:user_id, :university_name, :year, :degree, :grades, :achievement)", nativeQuery = true)
	void addducation(@Param("user_id") Long id, @Param("university_name") String university_name, @Param("year") int year, @Param("degree") String degree, @Param("grades") String grades, @Param("achievement") String achievement);	
	
	@Modifying
    @Transactional
    @Query(value = "UPDATE education SET university_name = :university_name, year = :year, degree = :degree, grades = :grades, achievement = :achievement WHERE user_id = :user_id", nativeQuery = true)
    void updateInformation(@Param("user_id") Long id, @Param("university_name") String university_name, @Param("year") String year, @Param("degree") String degree, @Param("grades") String grades);

	
	@Query(value = "SELECT about_me, company, title, website FROM information WHERE user_id = :user_id", nativeQuery = true)
	public List<Education[]>getEduById(@Param("user_id") Long id);

}
