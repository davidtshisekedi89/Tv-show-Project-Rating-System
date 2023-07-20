package com.david.test.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.david.test.models.Rating;
import com.david.test.models.Show;
import com.david.test.models.User;


public interface RatingRepository extends CrudRepository<Rating, Long>{
	List<Rating> findAll();

//	==========================================
	List<Rating> findByShowId(Long show_id);
	
//check if a rating already exist
	
	boolean existsByUserAndShow(User user, Show show);

}
