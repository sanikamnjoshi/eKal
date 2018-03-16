<%-- 
    Document   : admin-users
    Created on : 14 Mar, 2018, 12:04:56 PM
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    
    <body style="background-image: url(bgl/bgl9.jpg);">
        
        <div class="sidenav">
            <span title="Admin Home"><a href="admin-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Users"><a href="#"><i class="material-icons">people</i></a></span>
            <span title="Calendar"><a href="admin-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="Events"><a href="admin-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="Tasks"><a href="admin-tasks.jsp"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
        </div>

        <div class="main" align="center">
            <h1>Users</h1>
            
            <div class="usercontainer">
                <table border="0" cellspacing="10">
                    <tr>
                        <td>Full Name</td>
                        <td><input type="text" name="tfUserFullName" value="" size="30" disabled /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="tfUsername" value="" size="30" disabled /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="tfUserPassword" value="" size="30" disabled /></td>
                    </tr>
                </table>
            </div>
            
            <br>
            <br>
            <input class="button" type="button" value="Previous" name="btnPreviousUser" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Next" name="btnNextUser" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            
            <form action="admin-editUser.jsp" method="POST" style="display:inline-block;">
                <input class="button" type="submit" value="Edit User" name="btnEditUser" />
            </form>

            &nbsp;&nbsp;&nbsp;&nbsp;

            <form action="admin-createUser.jsp" method="POST" style="display:inline-block;">
                <input class="button" type="submit" value="Create User" name="btnCreateUser" />
            </form>
            
            
        </div>
        
    </body>
</html>
