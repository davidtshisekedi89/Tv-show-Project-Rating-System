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
<link rel="stylesheet" href="/css/about.css"> 
<link rel="stylesheet" href="/css/navbar.css"> 
<link rel="stylesheet" href="/css/footer.css"> 
<style>
#more {display: none;}
</style>
<script src="https://kit.fontawesome.com/52706daa36.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert Title Here</title>
</head>
<body>
<!-- NavBar -->
<div class="nav-bar">
    <nav>
      <h2 class="logo">TV<span>SHOW</span></h2>
        <ul>
			<li><a class="nav-link" href="/shows">Home</a></li>
			<li><a class="nav-link" href="">About</a></li>
			<li><a class="nav-link" href="/shows/service">Service</a></li>
			<li><a class="nav-link" href="">Contact Us</a></li>
        </ul>
        <a class="button" href="/logout">Logout</a>
        
    </nav>
</div>


<div class="section">

  <div class="container">
  
    <div class="content-section">
	  <div class="arrow">
		<a href="/shows"><i class="fa-sharp fa-solid fa-arrow-left fa-beat fa-2x "></i></a>
	  </div>
      <div class="title">
        <h3>About Us</h3>
      </div>
      <div class="content hideContent">
        <h3>TV show management application is developed using Spring Boot, which is a Java-based framework for building web applications. The application provides various features for users to interact with the TV shows.</h3>
        <p>The application includes a login system with validation, allowing users to create accounts and securely authenticate themselves. This ensures that only authorized users can access the system.

         Once logged in, users can perform CRUD (Create, Read, Update, Delete) operations on TV shows. They can add new shows, update the existing ones, and delete shows they no longer want. This functionality is implemented using Java, JavaScript, JSP (JavaServer Pages), CSS, and some Bootstrap for styling,<span id="dots">...</span><span id="more">resulting in an aesthetically pleasing user interface.

		 Additionally, users have the ability to rate the shows. They can assign a rating to a show, allowing them to express their opinion and provide feedback. The ratings are stored in the MySQL database, which is used as the application's data storage.

		 To handle the relationship between users and shows, a many-to-many relationship is established. This means that multiple users can rate multiple shows, and multiple shows can have ratings from multiple users. This relationship ensures the flexibility and scalability of the application.

		 Furthermore, users can view the average rating of each show they are interested in. This allows them to see the overall rating of a show based on the collective ratings provided by all users. This feature provides valuable insights and helps users make informed decisions about which shows to watch.

		 In addition to ratings, users can also leave comments about the shows. The comment box allows users to share their thoughts, opinions, or discuss specific aspects of a show. This promotes user engagement and encourages interaction within the community of TV show enthusiasts.

		 Lastly, the application offers a dark mode option, which allows users to switch between light and dark themes according to their preference. This feature enhances the user experience by providing a visually appealing interface and accommodating different user preferences.

		 Overall, your TV show management application built with Spring Boot, Java, JavaScript, JSP, CSS, and MySQL incorporates authentication, validation, CRUD operations, ratings, comments, and dark mode functionality, offering an intuitive and feature-rich experience for users to manage and explore their favorite TV shows.</span></p>
		 
        <div class="btn" onclick="myFunction()" id="">
          <a id="readMoreText"> Read More</a>
        </div> 
        

        <div class="social">
		  <a href=""><i class="fa-brands fa-github"></i></a>
		  <a><i class="fa-brands fa-linkedin"></i></a>
		  <a><i class="fa-brands fa-discord"></i></a>
        </div>
        </div>

<div class="image-section">
  <img src="">
</div>


</div>

</div>

</div>

<script >
/* $(".btn a").on("click", function() {
    var $this = $(this); 
    var $content = $this.parent().prev("div.content");
    var linkText = $this.text().toUpperCase();    
    
    if(linkText === "SHOW MORE"){
        linkText = "Show Less";
        $content.switchClass("hideContent", "showContent", 400);
    } else {
        linkText = "Show More";
        $content.switchClass("showContent", "hideContent", 400);
    }

    $this.text(linkText);
}); */

function myFunction() {
	  var dots = document.getElementById("dots");
	  var moreText = document.getElementById("more");
	  var btnText = document.getElementById("readMoreText");

	  if (dots.style.display === "none") {
	    dots.style.display = "inline";
	    btnText.innerHTML = "Read more"; 
	    moreText.style.display = "none";
	  } else {
	    dots.style.display = "none";
	    btnText.innerHTML = "Read less"; 
	    moreText.style.display = "inline";
	  }
	}





</script>
</body>
</html>