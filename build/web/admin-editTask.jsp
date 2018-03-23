<%-- 
    Document   : admin-editTask
    Created on : 17 Mar, 2018, 2:35:48 AM
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Task Details</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker({
                    dateFormat: "dd/mm/yy"
                });
            });
        </script>
        
    </head>

    <body style="background-image: url(bgl/bgl16.jpg);">
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
            <h1>Edit Task Details</h1>

            <div class="taskcontainer">


                <!-- db to be linked -->


                <table border="0" cellspacing="10">
                    <tr>
                        <td>Task ID</td>
                        <td><input type="text" name="tfTaskId" size="30" disabled/></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><textarea name="tfTaskDescr" rows="1" cols="30"></textarea></td>
                    </tr>
                    <tr>
                        <td>Deadline</td>
                        <td><input type="text" name="tfEventDate" size="30" id="datepicker"/></td>
                    </tr>
                </table>
            </div>

            <br>
            <br>

            <input class="button" type="button" value="Previous" name="btnPreviousTask" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Next" name="btnNextTask" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Cancel" name="btnCancel" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Save" name="btnSave" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button delete-button" type="button" value="Delete" name="btnDeleteTask" />
            
        </div>
    </body>
</html>
