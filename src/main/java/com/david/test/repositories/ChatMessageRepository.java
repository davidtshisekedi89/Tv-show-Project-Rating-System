package com.david.test.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;


import com.david.test.models.ChatMessage;


public interface ChatMessageRepository extends CrudRepository<ChatMessage, Long> {

	List<ChatMessage> findAll();
	
	List<ChatMessage> findByShowId(Long showId);
	
}
