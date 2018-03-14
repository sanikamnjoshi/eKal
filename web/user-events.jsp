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
    <body>
        
        <div class="sidenav">
            <span title="Home"><a href="user-home.jsp"><i class="material-icons">home</i></a>
            <span title="Calendar"><a href="user-calendar.jsp"><i class="material-icons">date_range</i></a>
            <span title="My Events"><a href="#"><i class="material-icons">event</i></a>
            <span title="My Tasks"><a href="user-tasks.jsp"><i class="material-icons">done_all</i></a>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a>
        </div>

        <div class="main" align="center">
            <h1>My Events</h1>
            <p>This sidenav is always shown.</p>
        </div>
        
    </body>
</html>
