package com.abcjobs.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.abcjobs.model.User;

public interface UserRepository extends JpaRepository<User, Long>{

	@Query(value = "SELECT name, email, address, age, username FROM user WHERE user_id = :user_id", nativeQuery = true)
	public String getDetailsById(@Param("user_id") Long id);
	
	@Query(value = "SELECT * FROM user WHERE email = :email AND password = :password", nativeQuery = true)
	User login(@Param("email") String email, @Param("password") String password);
	
	
	@Modifying
    @Transactional
    @Query(value = "UPDATE user SET name = :name, email = :email, address = :address, age = :age, username =:username WHERE user_id = :user_id", nativeQuery = true)
    void updateProfil(@Param("user_id") Long id, @Param("name") String name, @Param("email") String email, @Param("address") String address, @Param("age") int age, @Param("username") String username);


	@Query(value = "SELECT * FROM user"
	 		+ " WHERE name LIKE %:key%"
	 		+ " OR username LIKE %:key%",nativeQuery = true)
	public List<User> searchByKey(@Param("key") String key);

	
	@Query(value = "SELECT * FROM user WHERE user_id = :user_id", nativeQuery = true)
	public String getUserObject(@Param("user_id") Long id);
	
	@Query(value = "SELECT * FROM user WHERE email = :email", nativeQuery = true)
	String checkEmail(@Param("email") String email);
}
