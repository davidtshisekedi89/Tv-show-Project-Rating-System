<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="/css/details.css"> 
<link rel="stylesheet" href="/css/chat.css"> 
<link rel="stylesheet" href="/css/dark-mode.css"> 

<link rel="stylesheet" href="/css/footer.css"> 
<script src="https://kit.fontawesome.com/52706daa36.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="/javaScript/chatBox.js"></script>
<title>Insert Title Here</title>
</head>
<body>

<!-- NavBar -->

<div class="nav-bar">
    <nav>
      <h2 class="logo">TV<span>SHOW</span></h2>
        <ul>
			<li><a class="nav-link" href="/shows">Home</a></li>
			<li><a class="nav-link" href="/shows/about">About</a></li>
			<li><a class="nav-link" href="/shows/service">Service</a></li>
			<li><a class="nav-link" href="">Contact Us</a></li>
        </ul>
        <a class="button" href="/logout">Logout</a>
        
    </nav>
</div>
<div class="">
<!--Dark mode  -->
<div class="container  ">
<div class="mode-box">
 <input  class="checkbox" type="checkbox" id="checkbox" >
 <label data-label="special" class="label" for="checkbox">
  <i class="fas fa-moon"></i>
  <i class="fas fa-sun"></i>
  <div class="mode"></div>
 </label>

</div>
 

 <a href="/shows"><i class="fa-sharp fa-solid fa-arrow-left fa-beat fa-2x "></i></a>
 <p id="my-paragraph">Posted by: <span><c:out value="${oneShow.user.userName }" /></span></p>
 
 <div class="card-group">
    <div class="video-box">
      <iframe  width="800" height="400" src="https://www.youtube.com/embed/${oneShow.trailerLink}" title="${oneShow.title}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen ></iframe>
      
      <div class="mini-box">
       <span class="mini"><input type="checkbox">Auto Play</span>
       <span class="mini"><input type="checkbox">Auto Next</span>
       <span class="mini"><input type="checkbox">Auto Skip</span>
       <span class="mini"><i class="fa-solid fa-bookmark"></i>Bookmark</span>
      </div>
      <hr>
      <p class="text-video">If current server doesn't work please try this button below.</p>
      <a href="https://www.youtube.com/embed/${oneShow.trailerLink}" target="_blank">
       <div class="play-btn" >
         <i class="fa fa-play fa-fade fa-xl"></i>
       </div>
      </a>
      <hr>
      <div>
         <img/>
      </div>
      
     <!--  <div class="comment-video-box">
      <h5>Comments</h5>
      
      <h5>Login</h5>
      
      </div> -->
      
     <!--  <div>
       <span class="text-icon-box" style="color: #a0a4ac;"><i class="fa-brands fa-facebook fa-lg"><i class="fa-brands fa-linkedin fa-lg"><i class="fa-brands fa-github fa-lg"></i></i></i></span> <input class="input-discusion" placeholder="Join the discussion..."/>
       
       <button id="discussion-sender"><i class="fa-solid fa-paper-plane fa-lg"></i></button>
      
      </div> -->
     <!--  <hr>  -->
      <div >
        <span class="text-icon-box" style="color: #a0a4ac;"><i class="fa-solid fa-envelope fa-lg" style="color: #a0a4ac;"></i> Subscribe</span>
        <span class="text-icon-box" style="color: #a0a4ac;"><i class="fa-solid fa-lock fa-lg" style="color: #a0a4ac;"></i> Privacy</span> 
        <span class="text-icon-box" style="color: #a0a4ac;"><i class="fa-sharp fa-solid fa-circle-exclamation fa-lg " style="color: #a0a4ac;"></i> Do Not Sell My Data</span>
     
      </div>
      
    </div>

  <div class="card">
     <div class="image-box">
           <img src="${oneShow.imageData}" class="image-data" alt="Show Image">
      <h5 class="card-title card-body"><c:out value="${oneShow.title}" /></h5> 
     </div>
     
         <div class="desc-box ">
           <p class="text-body-secondary"> <c:out value="${oneShow.description}"/> </p>
         </div>
         <div class="card-body">
    <h5 class="card-text">Country: <c:out value="${oneShow.country}" /></h5>
    <h5 class="card-text">Genre: <c:out value="${oneShow.genre}" /></h5>
    <h5 class="card-text">Release: <c:out value="${oneShow.releaseDate}" /></h5>
    <h5 class="card-text">Director: <c:out value="${oneShow.director}" /></h5>
    <h5 class="card-text">Network: <c:out value="${oneShow.network}" /></h5>
    <h5 class="card-text">Cast: <c:out value="${oneShow.cast}" /></h5>
         </div>
         
      
         <div class="star-box">
           <span class="fa fa-star  fa-2x checked"></span><p class="container"><c:out value="${averageRating}"/></p>
         </div>
         
         
         <div class="card-footer">
          <small class="text-body-secondary">Last updated 3 mins ago</small>
         </div>
	             
	             
 <!-- chat box -->
	             
	              
				
				  
	<div class="chatbox-wrapper">
		<div class="chatbox-toggle">
			<i class='bx bx-message-dots'></i>
		</div>
		<div class="chatbox-message-wrapper">
			<div class="chatbox-message-header">
				<div class="chatbox-message-profile">
					
					<div>
						<h4 class="chatbox-message-name"><c:out value="${userName }" /></h4>
						<!-- <p>Posted by: <span></span></p> -->
						<!-- <p class="chatbox-message-status">online</p> -->
					</div>
				</div>
				<div class="chatbox-message-dropdown">
					<i class='bx bx-dots-vertical-rounded chatbox-message-dropdown-toggle'></i>
					
				</div>
			</div>
			
			<c:forEach var="oneMessage" items="${messageList}">
			<div class="chatbox-message-content">
				<h4 class="chatbox-message-no-message">
				   <c:out value="${oneMessage.message }"/>
				</h4>
			</div>
			</c:forEach>
			
			<div class="chatbox-message-bottom">
			
              <form:form action="/shows/messages/new" method="POST" modelAttribute="newMessage" class="chatbox-message-form">
              <form:hidden path="sender" value="${userId}"/>
              <form:hidden path="show" value="${oneShow.id}"/>
    
              
              <form:textarea path="message" type="text"  rows="1" placeholder="Type comment..." class="chatbox-message-input"></form:textarea>
              <form:errors path="message" />
    
              <div>
                <button type="submit" class="chatbox-message-submit"><i class='bx bx-send' ></i></button>
              </div>
              </form:form>
			
			
			</div>
		</div>
	</div>
	     
				<%-- <form action="#" class="chatbox-message-form">
					<textarea rows="1" placeholder="Type message..." class="chatbox-message-input"></textarea>
					<button type="submit" class="chatbox-message-submit"><i class='bx bx-send' ></i></button>
				</form> --%>
	     
 </div>    
	     
         
 </div>
	      
     
<!-- Description -->     
   
     
     
     
     <div class=" btn-style">
	     <c:if test="${oneShow.user.id.equals(userId)}" >
	       <a href="/shows/edit/${oneShow.id}" class="btn">Edit</a>
	     </c:if>
     </div>
     
   </div> 
   
  
 <!--Rating Table  -->  
   
 <div class="container mt-5">
   
  <table class="table table-striped table-hover">
    <tr>
      <th class="table-rate-text">NAME</th> 
      <th class="table-rate-text">RATING</th>
    </tr>
    <c:forEach var="eachRating" items="${ratingList}">
      <tr>
  
      	<td><c:out value="${eachRating.user.userName}" /></td>
      	<td><c:out value="${eachRating.rating}" /></td>
      
     
      </tr>
    </c:forEach>
   
 </table>
 
 </div > 
 
 <!-- Rating Input -->
 
 <div class="container rating-box">
 
	     <form:form action="/rating/new" method="POST" modelAttribute="newRating">
	     <form:hidden path="user" value="${userId}"/>
	     <form:hidden path="show" value="${oneShow.id}"/>
	     
	     <form:label path="rating" class="rating-label" id="my-text-rate">Leave a Rating:</form:label>
	     <form:input path="rating" type="number" min="1" max="5"/>
	     <form:errors path="rating" class="text-danger"/>
	     
	    <button type="submit" class="btn3">Rate!</button>
	</form:form>

 </div>
 
 <!-- ChatMessage -->
 
<!--  <h3>Here </h3> -->
 
<%--  <div>
	 <form:form action="/shows/messages/new" method="POST" modelAttribute="newMessage">
    <form:hidden path="sender" value="${userId}"/>
    <form:hidden path="show" value="${oneShow.id}"/>
    
    <form:input path="message" type="text" />
    <form:errors path="message" />
    
    <div>
        <button type="submit">Send Message</button>
    </div>
   </form:form>
<!-- // Message Area -->
<div>
<c:forEach var="oneMessage" items="${messageList}">

	<p>
		<c:out value="${oneMessage.message }"/>
		
	</p>
</c:forEach>

</div>
 
 </div> --%>
 
 <!-- Footer -->
 <footer class="footer">
  	 <div class="container">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>company</h4>
  	 			<ul>
  	 				<li><a href="/shows/about">about us</a></li>
  	 				<li><a href="#">our services</a></li>
  	 				<li><a href="#">privacy policy</a></li>
  	 				<li><a href="#">affiliate program</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>get help</h4>
  	 			<ul>
  	 				<li><a href="#">FAQ</a></li>
  	 				
  	 				<li><a href="#">legal notices</a></li>
  	 				<li><a href="#">order status</a></li>
  	 				<li><a href="#">payment options</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>gift cards</h4>
  	 			<ul>
  	 				<li><a href="#">Terms of Use</a></li>
  	 				<li><a href="#">TVSHOW shop</a></li>
  	 				<li><a href="#">Cookie Preferences</a></li>
  	 				
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>follow us</h4>
  	 			<div class="social-links">
  	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
  	 		</div>
  	 	</div>
  	 </div>
  </footer>
 
 <script>
 
 /* const checkbox = document.getElementById('checkbox');
 checkbox.addEventListener('change', ()=> {
	 document.body.classList.toggle('dark');
 }); */
 
const checkbox = document.getElementById('checkbox');
const pElement = document.getElementById('my-paragraph');
const labelElement = document.getElementById('my-text-rate');
const tableElements = document.querySelectorAll('tr, th, td');

checkbox.addEventListener('change', () => {
  document.body.classList.toggle('dark');
  
  if (document.body.classList.contains('dark')) {
    // Dark mode is enabled
    pElement.style.color = 'white';
    labelElement.style.color = 'white';
    
    for (let i = 0; i < tableElements.length; i++) {
      tableElements[i].style.color = 'white';
    }
  } else {
    // Dark mode is disabled
    pElement.style.color = '';
    labelElement.style.color = '';
    
    for (let i = 0; i < tableElements.length; i++) {
      tableElements[i].style.color = '';
    }
  }
});

//MESSAGE INPUT
 const textarea = document.querySelector('.chatbox-message-input')
 const chatboxForm = document.querySelector('.chatbox-message-form')

 textarea.addEventListener('input', function () {
 	let line = textarea.value.split('\n').length

 	if(textarea.rows < 6 || line < 6) {
 		textarea.rows = line
 	}

 	if(textarea.rows > 1) {
 		chatboxForm.style.alignItems = 'flex-end'
 	} else {
 		chatboxForm.style.alignItems = 'center'
 	}
 })



 // TOGGLE CHATBOX
 const chatboxToggle = document.querySelector('.chatbox-toggle')
 const chatboxMessage = document.querySelector('.chatbox-message-wrapper')

 chatboxToggle.addEventListener('click', function () {
 	chatboxMessage.classList.toggle('show')
 })



 // DROPDOWN TOGGLE
 const dropdownToggle = document.querySelector('.chatbox-message-dropdown-toggle')
 const dropdownMenu = document.querySelector('.chatbox-message-dropdown-menu')

 dropdownToggle.addEventListener('click', function () {
 	dropdownMenu.classList.toggle('show')
 })

 document.addEventListener('click', function (e) {
 	if(!e.target.matches('.chatbox-message-dropdown, .chatbox-message-dropdown *')) {
 		dropdownMenu.classList.remove('show')
 	}
 })




 // CHATBOX MESSAGE
 const chatboxMessageWrapper = document.querySelector('.chatbox-message-content')
 const chatboxNoMessage = document.querySelector('.chatbox-message-no-message')

 /* chatboxForm.addEventListener('submit', function (e) {
 	e.preventDefault()

 	if(isValid(textarea.value)) {
 		writeMessage()
 		setTimeout(autoReply, 1000)
 	} 
 }) */
 
/*  function addZero(num) {
	return num < 10 ? '0'+num : num
} */

function writeMessage() {
	const today = new Date()
	let message = `
		
	`
	chatboxMessageWrapper.insertAdjacentHTML('beforeend', message)
	chatboxForm.style.alignItems = 'center'
	textarea.rows = 1
	textarea.focus()
	textarea.value = ''
	chatboxNoMessage.style.display = 'none'
	scrollBottom()
}

function autoReply() {
	const today = new Date()
	let message = `
		
	`
	chatboxMessageWrapper.insertAdjacentHTML('beforeend', message)
	scrollBottom()
}

 function scrollBottom() {
	chatboxMessageWrapper.scrollTo(0, chatboxMessageWrapper.scrollHeight)
}
 
 
 </script> 
     
</body>
</html>