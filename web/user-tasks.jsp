<%-- 
    Document   : user-tasks
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Tasks</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>

    <body style="background-image: url(bgl/bgl14.jpg);">

        <div class="sidenav">
            <span title="Home"><a href="user-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Calendar"><a href="user-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="My Events"><a href="user-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="My Tasks"><a href="#"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
        </div>
        
        <div class="main" align="center">
            <h1>My Tasks</h1>

            <div class="taskcontainer">
                <!-- db fetched task list goes here -->



                <table border="0" cellspacing="10">
                    <tr>
                        <td>Task ID</td>
                        <td><input type="text" name="tfTaskId" size="30" disabled/></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><textarea name="tfTaskDescr" rows="1" cols="30" disabled></textarea></td>
                    </tr>
                    <tr>
                        <td>Deadline</td>
                        <td><input type="text" name="tfEventDate" size="30" disabled /></td>
                    </tr>
                </table>
            </div>
            
            <br>
            <br>
            <input class="button" type="button" value="Previous" name="btnPreviousTask" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Next" name="btnNextTask" />

        </div>

    </body>
</html>
