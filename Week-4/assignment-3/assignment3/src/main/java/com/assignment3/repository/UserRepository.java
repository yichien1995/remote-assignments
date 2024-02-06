package com.assignment3.repository;

import com.assignment3.entity.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
	User findByEmail(String email);
}
