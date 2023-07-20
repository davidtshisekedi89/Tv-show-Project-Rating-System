package com.david.test.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.david.test.models.ChatMessage;
import com.david.test.repositories.ChatMessageRepository;

@Service
public class ChatMessageService {
	@Autowired
	private ChatMessageRepository chatMessageRepo;
	
	
//	FIND ALL ChatMessages
	public List<ChatMessage> allChatMessages(){
		return chatMessageRepo.findAll();
	}
	
//	ADD/CREATE ChatMessage
	public ChatMessage createChatMessage(ChatMessage newChatMessage) {
		
	    return chatMessageRepo.save(newChatMessage);	
	}
	
//	FIND ChatMessage BY ID
	public ChatMessage findChatMessage(Long id) {
		Optional<ChatMessage> optionalChatMessage = chatMessageRepo.findById(id);
		if(optionalChatMessage.isPresent()) {
			return optionalChatMessage.get();
		} else {
		return null;
		}
	}
	
//	FIND MESSAGES BY EVENT ID
	public List<ChatMessage> getMessagesByShowId(Long showId) {
        return chatMessageRepo.findByShowId(showId);
    }
	
//	UPDATE ChatMessage
	public ChatMessage updateChatMessage(ChatMessage oneChatMessage) {
		return chatMessageRepo.save(oneChatMessage);
	}
	
//	DELETE ChatMessage
	public void deleteChatMessage(Long id) {
		chatMessageRepo.deleteById(id);
		
	}

}
