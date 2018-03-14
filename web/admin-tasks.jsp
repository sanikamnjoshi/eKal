<%-- 
    Document   : admin-tasks
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tasks</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        
        <div class="sidenav">
            <span title="Admin Home"><a href="admin-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Users"><a href="admin-users.jsp"><i class="material-icons">people</i></a></span>
            <span title="Calendar"><a href="admin-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="Events"><a href="admin-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="Tasks"><a href="#"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
        </div>

        <div class="main" align="center">
            <h1>Tasks</h1>
            
            <div>
               <!-- db fetched task list goes here -->
            </div>

            <br>
            <form action="admin-editTask.jsp" method="POST" style="display:inline-block;">
                <input class="button" type="submit" value="Edit Task" name="btnEditTask" />
            </form>

            &nbsp;&nbsp;&nbsp;&nbsp;

            <form action="admin-createTask.jsp" method="POST" style="display:inline-block;">
                <input class="button" type="submit" value="Create Task" name="btnCreateTask" />
            </form>
            
        </div>
        
    </body>
</html>
