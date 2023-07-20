package com.david.test.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;


import com.david.test.models.Show;


public interface ShowRepository extends CrudRepository<Show, Long>{
	List<Show> findAll();

}
