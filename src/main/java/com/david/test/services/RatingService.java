package com.david.test.services;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.david.test.models.Rating;
import com.david.test.models.Show;
import com.david.test.models.User;
import com.david.test.repositories.RatingRepository;

@Service
public class RatingService {
	
	@Autowired
	private RatingRepository ratingRepo;
	
	
//  Find All	
	public List<Rating> allRatings(){
		return ratingRepo.findAll();
	}
	
//  Create
	public Rating createRating(Rating newRating) {
		return ratingRepo.save(newRating);
	}
	
//  Find One
	public Rating findRating(Long id) {
		Optional<Rating> optionalRating= ratingRepo.findById(id);
		if(optionalRating.isPresent()) {
			return optionalRating.get();
			
		}else {
			return null;
		}
	}

//  Update
	 public Rating updateRating(Rating oneRating) {
		return ratingRepo.save(oneRating);
	}
	 
//   Delete
     public void removeRating(long id) {
    	  ratingRepo.deleteById(id);
		
	}
//	===============================================================
// Average 
    

     public double getAverageRatingForShow(Long show_id) {
 		List<Rating> ratings = ratingRepo.findByShowId(show_id);

 		int totalRatings = ratings.size();
 		double sumRatings = 0.0;

 		for (Rating rating : ratings) {
 		    sumRatings += rating.getRatingValue();
 		}
 		
 		
// 		return totalRatings > 0 ? sumRatings / totalRatings : 0.0;
 		double averageRating = totalRatings > 0 ? sumRatings / totalRatings : 0.0;

 		
 		 // Format the average to retain two decimal places
 		
 		
 		DecimalFormat decimalFormat = new DecimalFormat("#.##");
 		String formattedAverageRating = decimalFormat.format(averageRating);

 		return Double.parseDouble(formattedAverageRating);
 		
 		
 		
 		
 	}


 
     
     
     
     
//     showRating
     
     public List<Rating>  getRatingForOneShow(Long show_id) {
  		List<Rating> ratings = ratingRepo.findByShowId(show_id);

  		
  		return ratings;
  		

  		
  	}
     
  // Rate Show Once 
     
     public boolean hasUserRatedShow(User user, Show show) {
         return ratingRepo.existsByUserAndShow(user, show);
     }

}


