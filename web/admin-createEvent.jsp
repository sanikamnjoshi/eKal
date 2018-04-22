<%-- 
    Document   : admin-createEvent
    Author     : sanika
--%>

<%@page import="java.sql.*, java.sql.Timestamp, java.sql.Time, java.util.Date, java.text.SimpleDateFormat, java.text.ParseException" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Event</title>
        <link rel="stylesheet" href="style.css" type="text/css">


        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>


        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
        <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
        <script>
            $(document).ready(function () {
                $('input.timepicker').timepicker({
                    timeFormat: 'hh:mm p',
                    interval: 60,
                    minTime: '08:00am',
                    maxTime: '06:00pm',
                    startTime: '08:00am',
                    dynamic: false,
                    dropdown: true,
                    scrollbar: true
                });
            });
        </script>


    </head>
    <body style="background-image: url(bgl/bgl1.jpg);">

        <%!
            public class Event {

                String URL = "jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull";
                String USERNAME = "root";
                String PASSWORD = "root";

                Connection connection = null;
                PreparedStatement insertEvents = null;
                ResultSet resultset = null;

                public Event() {
                    try {
                        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                        insertEvents = connection.prepareStatement("INSERT INTO eventTbl(eventId, eventName, eventDate, eventDuration, eventTime) VALUES(?, ?, ?, ?, ?)");
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }

                public int setEvents(String eventId, String eventName, String eventDate, int eventDuration, String eventTime) {
                    int result = 0;

                    try {
                        insertEvents.setString(1, eventId);
                        insertEvents.setString(2, eventName);
                        insertEvents.setString(3, eventDate);
                        insertEvents.setInt(4, eventDuration);
                        insertEvents.setString(5, eventTime);
                        result = insertEvents.executeUpdate();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }

                    return result;
                }

            }
        %>

        <%
            int result = 0;

            String eventId = new String();
            String eventName = new String();
            String dateStr = new String();
            String eventDate = new String();
            String durationStr = new String();
            int eventDuration = 0;
            String eventTimeUtil;
            String timeStr = new String();
            String eventTime = new String();

            if (request.getParameter("tfEventId") != null) {
                eventId = request.getParameter("tfEventId");
            }

            if (request.getParameter("tfEventName") != null) {
                eventName = request.getParameter("tfEventName");
            }

            if (request.getParameter("tfEventDate") != null) {
                eventDate = request.getParameter("tfEventDate");
                // SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
            }

            if (request.getParameter("tfEventStartTime") != null) {
                eventTime = request.getParameter("tfEventStartTime");
                // SimpleDateFormat timeFormatter = new SimpleDateFormat("hh:mm:ss");
            }

            if (request.getParameter("tfEventDuration") != null) {
                durationStr = request.getParameter("tfEventDuration");
                eventDuration = Integer.parseInt(durationStr);
            }

            Event eventObj = new Event();
            result = eventObj.setEvents(eventId, eventName, eventDate, eventDuration, eventTime);
        %>


        <div class="sidenav">
            <span title="Admin Home"><a href="admin-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Users"><a href="admin-users.jsp"><i class="material-icons">people</i></a></span>
            <span title="Calendar"><a href="admin-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="Events"><a href="admin-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="Tasks"><a href="admin-tasks.jsp"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
            <span title="Need help with eKal? Send us an email." class="helpoption"><a href="mailto:ekalhelp@gmail.com?subject=Need Help With eKal &body=Hello%2C%0D%0A%0D%0AI am facing the following issue with eKal:%0D%0A%0D%0A%0D%0A%0D%0A---PLEASE WRITE YOUR EMAIL ABOVE THIS LINE---" target="_top"><i class="material-icons">email</i></a></span>
        </div>


        <div class="main" align="center">
            <h1>Create Event</h1>

            <form name="admin-createEvent-form" action="admin-createEvent.jsp" method="POST">
                <div class="eventcontainer">


                    <!-- db to be linked -->


                    <table border="0" cellspacing="10">
                        <tr>
                            <td>Event ID</td>
                            <td><input type="text" name="tfEventId" size="30" /></td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td><input type="text" name="tfEventName" size="30" /></td>
                        </tr>
                        <tr>
                            <td>Date</td>
                            <td><input type="text" name="tfEventDate" size="30" id="datepicker"/></td>
                        </tr>
                        <tr>
                            <td>Start Time</td>
                            <td><input type="text" name="tfEventStartTime" size="30" class="timepicker" /></td>
                        </tr>
                        <tr>
                            <td>Minutes</td>
                            <td><input type="text" name="tfEventDuration" size="30" /></td>
                        </tr>
                    </table>
                </div>

                <br>

                <input class="button" type="reset" value="Clear" name="btnClear" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input class="button" type="submit" value="Create Event" name="btnCreateEvent" />

            </form>

        </div>

    </body>
</html>
