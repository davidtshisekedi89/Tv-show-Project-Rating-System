package com.david.test.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.david.test.models.ChatMessage;
import com.david.test.models.Rating;
import com.david.test.models.Show;
import com.david.test.services.ChatMessageService;
import com.david.test.services.RatingService;
import com.david.test.services.ShowService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ShowController {
	
	@Autowired
	private ShowService showService;
	
	@Autowired
	private RatingService ratingService;
	
	@Autowired
	private ChatMessageService messageService;
	

	
	
	@GetMapping("/shows/new")
	public String renderCreateShowForm(
			@ModelAttribute("newShow") Show newShow, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		return "createShow.jsp";
	}
	
	@PostMapping("/shows/new")
	public String processCreateShow(
			@Valid @ModelAttribute("newShow") Show newShow,
			BindingResult result
			
	) {
		if (result.hasErrors()) {
			return "createShow.jsp";
		} else {
			// Handle the image file upload
			
			
			showService.createShow(newShow);
			return "redirect:/shows";
		}
	}
	
	@GetMapping("/shows")
	public String dashboard(HttpSession session, Model model, Long show_id) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		model.addAttribute("showList", showService.allShows());
		model.addAttribute("ratings",  new Rating());
		
		return "dashboard.jsp";
	}
	
	@GetMapping("/shows/{id}")
	public String showDetails(@PathVariable("id") Long id, Model model, HttpSession session, Long show_id) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		
		// Check if the user has already rated the show
		model.addAttribute("oneShow", showService.findShow(id));
		double averageRating = ratingService.getAverageRatingForShow(id);
		model.addAttribute("averageRating", averageRating);
		model.addAttribute("ratingList", ratingService.getRatingForOneShow(id));
		model.addAttribute("newRating", new Rating());
		model.addAttribute("newMessage", new ChatMessage());
		model.addAttribute("messageList", messageService.getMessagesByShowId(id));
		
		return "detailsShow.jsp";
	}
	
	
	
	@GetMapping("/shows/edit/{id}")
	public String renderEditShow(@PathVariable("id") Long id, Model model, HttpSession session) {
		if (session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		
		model.addAttribute("oneShow", showService.findShow(id));
		return "updateShow.jsp";
	}
	
	@PutMapping("/shows/edit/{id}")
	public String processEditShow(
			@PathVariable("id") Long id,
			@Valid @ModelAttribute("oneShow") Show oneShow,
			BindingResult result
	) {
		if (result.hasErrors()) {
			return "updateShow.jsp";
		} else {
			showService.updateShow(oneShow);
			return "redirect:/shows";
		}
	}
	
	@DeleteMapping("/shows/{id}")
	public String deleteShow(@PathVariable("id") Long id) {
		showService.removeShow(id);
		return "redirect:/shows";
	}
	
	@PostMapping("/rating/new")
	public String processCreateRating(
			Model model,
			
			@Valid @ModelAttribute("newRating") Rating newRating,
			BindingResult result
	) {
		    Long showId = newRating.getShow().getId();
		if (result.hasErrors()) {
			model.addAttribute("newRating", new Rating());
			return "redirect:/shows/"+ showId;
		}

		// Check if a rating already exists for the user and show combination
		boolean hasRatedBefore = ratingService.hasUserRatedShow(newRating.getUser(), newRating.getShow());

		if (hasRatedBefore) {
			// Display an error message or handle the situation as desired
			model.addAttribute("error", "You have already rated this show.");
			return "redirect:/rating/new";
		}
		   // Add a null check for the rating field
		if (newRating.getRating()== null) {
			model.addAttribute("error", "Rating is required");
			return "redirect:/rating/new";
		}
        
		ratingService.createRating(newRating);
		return "redirect:/shows/"+ showId;
		
	}
	
	@GetMapping("/rating/new")
	public String errorPage(Model model,@Valid @ModelAttribute("newRating")
	Rating newRating) {
		
		
		
		boolean hasRatedBefore = ratingService.hasUserRatedShow(newRating.getUser(), newRating.getShow());
		model.addAttribute("error", "You have already rated this show.");

		if (hasRatedBefore) {
			// Display an error message or handle the situation as desired
			return "error.jsp";
		}

		return "error.jsp";
	}
	
	
	// Chat Messages
	
	@PostMapping("/shows/messages/new")
	public String processNewChatMessage(
//			@PathVariable("showId") Long showId,
			@Valid @ModelAttribute("newMessage") ChatMessage newMessage,
			BindingResult result,
			HttpSession session
	) {
		if (result.hasErrors()) {
			// Handle the case where there are validation errors
			return "error.jsp"; // Redirect back to the show details page with the corresponding showId
		} 
			// Retrieve the authenticated user from the session
//			Long userId = (Long) session.getAttribute("userId");
//			User sender = userService.findUser(userId);

			// Retrieve the show associated with the chat message
//			Show show = showService.findShow(showId);

			// Set the sender and show for the chat message
//			newMessage.setSender(sender);
//			newMessage.setShow(show);

			// Save the chat message
			messageService.createChatMessage(newMessage);

			// Redirect to the show details page 
			Long showId = newMessage.getShow().getId();
			return "redirect:/shows/"+ showId; // Redirect back to the show  page 
	}
	
   //	aboutPage
	
	@GetMapping("/shows/about")
	public String aboutPage() {
		return "about.jsp";
	}
	
  //	servicesPage
	
	@GetMapping("/shows/service")
	public String servicesPage() {
		return "services.jsp";
	}
	
 

}
