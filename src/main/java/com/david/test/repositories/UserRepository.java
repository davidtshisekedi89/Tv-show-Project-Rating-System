package com.david.test.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.david.test.models.User;

public interface UserRepository extends CrudRepository<User, Long>{
	Optional<User> findByEmail(String email);

}
