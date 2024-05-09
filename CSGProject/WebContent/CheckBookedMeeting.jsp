<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meeting Appointment Booking System</title>
    <link rel="stylesheet" href="style.css">
    <script type="text/javascript">

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
    	alert("Please enter only numbers");
        return false;
    }
    return true;
}

function isLetter(e, t)   
{    
   if (window.event)    
   {    
      var charCode = window.event.keyCode;    
   }    
   else if (e)   
   {    
      var charCode = e.which;    
   }    
   else { return true; }    
   if ((charCode > 64 && charCode < 91) ||
		   (charCode > 96 && charCode < 123))    
       return true;    
   else  
   {    
      alert("Please enter only alphabets");    
      return false;    
   }           
}     
</script>
</head>
<body>
    <header>
        <nav>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="booking.jsp">BookMeeting</a></li>
                <li><a href="checkBookedMeeting.jsp">CheckBookedMeeting</a></li>
                <li><a href="cancel.jsp">CancelMeeting</a></li>
               
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
       
>
	  <section id="booking-section" class="booking-section">
            <h2>Book Your Meeting</h2>
            <form class="booking-form" method="post" action="BookMeeting" >
            
            <table>
            <tr>
                <th><label for="Name">Name:</label></th>
               <td> <input type="text" id="name" name="name" required></td>
           </tr>
            <tr>
            <th><label for="meetingDate">Meeting Date:</label>  </tr>
             <td> <input type="date" id="meetingDate" name="meetingDate" required></td>
             </tr>
                
                
                <tr>
                  <th><label for="meetingTime">Meeting Time:</label>  </th>
                <td> <input type="time" id="meetingTime" name="meetingTime" required></td>
               </tr>
               
               <tr>
                 <th> <label for="meetingSubject">Meeting Subject:</label>
               <td>  <input type="text" id="meetingSubject" name="meetingSubject" required>  </th></td>
            </tr>
                <button type="submit">Book Appointment</button>
                </table>
            </form>
        </section>
     

    
    </main>

    <footer>
        <p>&copy; 2024 Meeting Planner Made by SridineshG.</p>
    </footer>
</body>
</html>
