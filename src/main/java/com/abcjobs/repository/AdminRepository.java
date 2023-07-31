package com.abcjobs.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.abcjobs.model.Administration;

public interface AdminRepository extends JpaRepository<Administration, Long>{

	@Query(value = "SELECT * FROM administration WHERE name = :name AND password = :password", nativeQuery = true)
	Administration login(@Param("name") String name, @Param("password") String password);
	
	@Query(value = "SELECT user.*, information.about_me, information.company, information.title, information.website "
			+ "FROM user INNER JOIN information ON user.user_id = information.user_id", nativeQuery = true)
	List<Object[]> listAllUser();
	
	@Modifying
    @Query(value = "DELETE FROM user WHERE user_id = :user_id", nativeQuery = true)
    void deleteById(@Param("user_id") Long id);
	
}
