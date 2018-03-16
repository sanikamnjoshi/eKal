<%-- 
    Document   : user-events
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Events</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    
    <body style="background-image: url(bgl/bgl11.jpg);">
        
        <div class="sidenav">
            <span title="Home"><a href="user-home.jsp"><i class="material-icons">home</i></a>
            <span title="Calendar"><a href="user-calendar.jsp"><i class="material-icons">date_range</i></a>
            <span title="My Events"><a href="#"><i class="material-icons">event</i></a>
            <span title="My Tasks"><a href="user-tasks.jsp"><i class="material-icons">done_all</i></a>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a>
        </div>

        <div class="main" align="center">
            <h1>My Events</h1>
            
            
            <div class="eventcontainer">
                
                
                <!-- db to be linked -->
                
                
                <table border="0" cellspacing="10">
                    <tr>
                        <td>Event ID</td>
                        <td><input type="text" name="tfEventId" size="30" disabled /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="tfEventName" size="30" disabled /></td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td><input type="text" name="tfEventDate" size="30" disabled /></td>
                    </tr>
                    <tr>
                        <td>Start Time</td>
                        <td><input type="text" name="tfEventStartTime" size="30" disabled /></td>
                    </tr>
                    <tr>
                        <td>Minutes</td>
                        <td><input type="text" name="tfEventDuration" size="30" disabled /></td>
                    </tr>
                </table>
            </div>

            <br>
            <br>
            <input class="button" type="button" value="Previous" name="btnPreviousEvent" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Next" name="btnNextEvent" />
            
            
        </div>
        
    </body>
</html>
