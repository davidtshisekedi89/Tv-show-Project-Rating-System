package com.david.test.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.david.test.models.LoginUser;
import com.david.test.models.User;
import com.david.test.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	
    public User register(User newUser, BindingResult result) {
    	
    	
        // TO-DO - Reject values: 
        // Reject if email is taken (present in database)
        // 1. Find user in the DB by email 
    	Optional<User> optionalUser = userRepo.findByEmail(newUser.getEmail());
        // 2. if the email is present , reject
    	if(optionalUser.isPresent()) {
    		result.rejectValue("email","unique", "This email is already registered");
    	}
        // Reject if password doesn't match confirmation
    	if(!newUser.getPassword().equals(newUser.getConfirm())) {
    		result.rejectValue("confirm","matches", "Confirm password does not match");
    		
    	}
        // if result has errors, return 
    	if(result.hasErrors() ) {
    		return null;
    	}
        // Hash and set password, save user to database 
    	String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
    	newUser.setPassword(hashed);
    	return userRepo.save(newUser);
    	
	  }
	        
	public User login(LoginUser newLogin, BindingResult result) {
		
		
	    // TO-DO - Reject values: 
        // Find user in the DB by email
        // 1. Find user in the DB by email 
    	Optional<User> optionalUser = userRepo.findByEmail(newLogin.getEmail());

        // 2. if the email is not present , reject 
    	if(!optionalUser.isPresent()) {
    		result.rejectValue("email","unique", "This email is not registered");
    		return null;
    	}
    	
        // 3.1 grab the user from potential user 
    	User user = optionalUser.get();
        // 3.2 if BCrypt password match fails
    	if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
    		result.rejectValue("password", "matches", "Password incorrect");
    		
    	}
        // 4 if result has errors,return
    	if(result.hasErrors() ) {
    		return null;
    	}
        // Otherwise, return the user object
		
    	return user;
	  }
	  
	
	public User findUser(Long id ) {
		Optional<User> optionalUser = userRepo.findById(id);
		if(optionalUser.isPresent()) {
			return optionalUser.get();
			
		} else {
			return null;
		}
	}

}
