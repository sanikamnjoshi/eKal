<%-- 
    Document   : admin-createUser
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>

        <div class="sidenav">
            <span title="Admin Home"><a href="admin-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Users"><a href="admin-users.jsp"><i class="material-icons">people</i></a></span>
            <span title="Calendar"><a href="admin-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="Events"><a href="admin-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="Tasks"><a href="admin-tasks.jsp"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
        </div>


        <div class="main" align="center">
            <h1>Create User</h1>
            
            <div class="signupcontainer">
                <form name="admin-createUser-form" action="admin-createUser-validate.jsp" method="POST">
                    <table border="0" cellspacing="10">
                        <tr>
                            <td>First Name</td>
                            <td><input type="text" name="tfUserFirstName" value="" size="30" /></td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td><input type="text" name="tfUserLastName" value="" size="30" /></td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td><input type="text" name="tfUsername" value="" size="30" /></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="tfUserPassword" value="" size="30" /></td>
                        </tr>
                    </table>
                    <br>
                    <input class="button" type="submit" value="Create User" name="btnCreateUser" />
                </form>
            </div>
        </div>
    </body>

</html>
