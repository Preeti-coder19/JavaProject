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
                <li><a href="checkavail.jsp">CheckAvailability</a></li>
               
                   <li><button class="button" onclick="location.href='CsgIndex.html'">Sign Out</button></li>
                   
              
            </ul>
        </nav>
        <div class="hero-section">
            <h1>Welcome to Appointment Scheduling</h1>
            <p>Plan your meetings efficiently with us. Sign up or log in to get started.</p>
            
        </div>
        
    </header>

    <main>
       <section id="availability-section" class="availability-section">
            <h2>Check Availability</h2>
            <form action="#" class="availability-form">
                <label for="checkDate">Check Date:</label>
                <input type="date" id="checkDate" name="checkDate" required>
                
                <label for="checkTime">Check Time:</label>
                <input type="time" id="checkTime" name="checkTime" required>

                <button type="submit">Check Availability</button>
            </form>

     

    
    </main>

    <footer>
        <p>&copy; 2024 Meeting Planner Made by SridineshG.</p>
    </footer>
</body>
</html>
