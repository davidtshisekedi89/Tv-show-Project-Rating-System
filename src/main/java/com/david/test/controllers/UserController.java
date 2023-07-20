package com.david.test.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.david.test.models.LoginUser;
import com.david.test.models.User;
import com.david.test.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	
	/*
	 * @GetMapping("/") public String renderMainForm(Model model ) {
	 * model.addAttribute("newUser", new User());
	 * 
	 * return "index.jsp";
	 * 
	 * }
	 */
	
	
	@GetMapping("/register")
	public String renderRegForm(Model model ) {
		model.addAttribute("newUser", new User());
		
		return "index.jsp";
		
	}
	
	@GetMapping("/login")
	public String renderLogForm(Model model ) {
		
		model.addAttribute("newLogin", new LoginUser());
		
		
		return "login.jsp";
		
	}
	
	@PostMapping("/register")
	public String processRegister(
			@Valid @ModelAttribute("newUser")User newUser,
			BindingResult result, Model model, HttpSession session) {
		User registeredUser = userService.register(newUser, result);
		
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "index.jsp";
			
		} else {
			session.setAttribute("userId", registeredUser.getId());
        //	Optional session
			session.setAttribute("userName", registeredUser.getUserName());
			
			return "redirect:/shows"; 
		}
	}
	
	@PostMapping("/login")
	public String processLogin(
			@Valid @ModelAttribute("newLogin")LoginUser newLogin,
			BindingResult result, Model model, HttpSession session) {
		User loginUser = userService.login(newLogin, result);
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "login.jsp";
			
		} else {
			session.setAttribute("userId", loginUser.getId());
		 //	Optional session
			session.setAttribute("userName", loginUser.getUserName());
			
			return "redirect:/shows";
		}
	}
	
	
	
	@GetMapping("/logout")
	public String logoutDashboard(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	// HomePage 
	
	@GetMapping("/")
	public String HomePage() {
		return "home.jsp";
	}

}
