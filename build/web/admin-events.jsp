<%-- 
    Document   : admin-events
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Events</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>

        <div class="sidenav">
            <span title="Admin Home"><a href="admin-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Users"><a href="admin-users.jsp"><i class="material-icons">people</i></a></span>
            <span title="Calendar"><a href="admin-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="Events"><a href="#"><i class="material-icons">event</i></a></span>
            <span title="Tasks"><a href="admin-tasks.jsp"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
        </div>

        <div class="main" align="center">
            <h1>Events</h1>

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
            
            <input class="button" type="button" value="Previous" name="btnPreviousEvent" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Next" name="btnNextEvent" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            
            <form action="admin-editEvent.jsp" method="POST" style="display:inline-block;">
                <input class="button" type="submit" value="Edit Event" name="btnEditEvent" />
            </form>

            &nbsp;&nbsp;&nbsp;&nbsp;

            <form action="admin-createEvent.jsp" method="POST" style="display:inline-block;">
                <input class="button" type="submit" value="Create Event" name="btnCreateEvent" />
            </form>
        </div>

    </body>
</html>
