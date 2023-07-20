package com.david.test.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.david.test.models.Show;
import com.david.test.repositories.ShowRepository;

@Service
public class ShowService {
	
	@Autowired
	private ShowRepository showRepo;
	
	
//  Find All	
	public List<Show> allShows(){
		return showRepo.findAll();
	}
	
//  Create
	public Show createShow(Show newShow) {
		return showRepo.save(newShow);
	}
	
//  Find One
	public Show findShow(Long id) {
		Optional<Show> optionalShow= showRepo.findById(id);
		if(optionalShow.isPresent()) {
			return optionalShow.get();
			
		}else {
			return null;
		}
	}

//  Update
	 public Show updateShow(Show oneShow) {
		return showRepo.save(oneShow);
	}
	 
//   Delete
     public void removeShow(long id) {
    	  showRepo.deleteById(id);
		
	}
     
// upload
     
//     public void uploadImage(MultipartFile file) throws IOException {
//    	  byte[] imageData = file.getBytes(); // Extract the byte array from the MultipartFile
//    	  Show imageEntity = new Show();
//    	  imageEntity.setImageData(imageData);
//    	  showRepo.save(imageEntity);
//    	}
     
    
}
