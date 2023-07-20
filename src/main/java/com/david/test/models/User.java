package com.david.test.models;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="users")
public class User {
		 @Id
		 @GeneratedValue(strategy = GenerationType.IDENTITY)
		 private Long id;
		    
		 @NotEmpty(message="Name is required!")
		 @Size(min=3, max=30, message="Name must be between 3 and 30 characters")
		 private String userName;
		    
	     @NotEmpty(message="Last Name is required!")
	     @Size(min=3, max=30, message="Last Name must be between 3 and 30 characters")
	     private String lastName;
    
	   

		@NotEmpty(message="Email is required!")
	    @Email(message="Please enter a valid email!")
	    private String email;
	    
	    @NotEmpty(message="Password is required!")
	    @Size(min=8, max=128, message="Password must be between 8 and 128 characters")
	    private String password;
	    
	    @Transient
	    @NotEmpty(message="Confirm Password is required!")
	    @Size(min=8, max=128, message="Confirm Password must be between 8 and 128 characters")
	    private String confirm;
	    
	    @Column(updatable=false)
	    @DateTimeFormat(pattern="yyyy-MM-dd")
	    private Date createdAt;
	    @DateTimeFormat(pattern="yyyy-MM-dd")
	    private Date updatedAt;
	    
        // chatMessages
	    
	    @OneToMany(mappedBy = "sender")
	    private List<ChatMessage> chatMessages;
	    
        @OneToMany(mappedBy="user", fetch = FetchType.LAZY) private List<Show> shows;
		 
		@OneToMany(mappedBy="user", fetch = FetchType.LAZY) private List<Rating>ratings;
		
	    
	    

		public User() {}
		
		


		public List<Show> getShows() {
			return shows;
		}




		public void setShows(List<Show> shows) {
			this.shows = shows;
		}




		public List<Rating> getRatings() {
			return ratings;
		}




		public void setRatings(List<Rating> ratings) {
			this.ratings = ratings;
		}




		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getUserName() {
			return userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}
		

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getConfirm() {
			return confirm;
		}

		public void setConfirm(String confirm) {
			this.confirm = confirm;
		}

		public Date getCreatedAt() {
			return createdAt;
		}

		public void setCreatedAt(Date createdAt) {
			this.createdAt = createdAt;
		}

		public Date getUpdatedAt() {
			return updatedAt;
		}

		public void setUpdatedAt(Date updatedAt) {
			this.updatedAt = updatedAt;
		}




		public List<ChatMessage> getChatMessages() {
			return chatMessages;
		}




		public void setChatMessages(List<ChatMessage> chatMessages) {
			this.chatMessages = chatMessages;
		}
        
		
		
	

}
