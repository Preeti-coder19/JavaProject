<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meeting Appointment Booking System</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <nav>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="booking.jsp">BookMeeting</a></li>
                <li><a href="checkBookedMeeting.jsp">CheckBookedMeeting</a></li>
                <li><a href="checkAvail.jsp">CheckAvailability</a></li>
               
                   <li><button class="button" onclick="location.href='signup.html'">Sign Up</button></li>
                   <li> <button  class="button" onclick="location.href='signin.html'">Sign In</button></li>
              
            </ul>
        </nav>
        <div class="hero-section">
            <h1>Welcome to Appointment Scheduling</h1>
            <p>Plan your meetings efficiently with us. Sign up or log in to get started.</p>
            
        </div>
        
    </header>

    <main>
        <section id="booking-section" class="booking-section">
            <h2>Book Your Meeting</h2>
            <form class="booking-form" method="post" action="BookMeeting" >
                <label for="Name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="meetingDate">Meeting Date:</label>
                <input type="date" id="meetingDate" name="meetingDate" required>
                
                <label for="meetingTime">Meeting Time:</label>
                <input type="time" id="meetingTime" name="meetingTime" required>

                <label for="meetingSubject">Meeting Subject:</label>
                <input type="text" id="meetingSubject" name="meetingSubject" required>

                <button type="submit">Book Appointment</button>
            </form>
        </section>

     

    
    </main>

    <footer>
        <p>&copy; 2024 Meeting Planner Made by SridineshG.</p>
    </footer>
</body>
</html>
