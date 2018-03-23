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

    <body style="background-image: url(bgl/bgl3.jpg);">

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
            <h1>Create User</h1>


            <form name="admin-createUser-form" action="admin-createUser-validate.jsp" method="POST">
                <div class="signupcontainer">
                    <table border="0" cellspacing="10">
                        <tr>
                            <td>Full Name</td>
                            <td><input type="text" name="tfUserFullName" value="" size="30" /></td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td><input type="text" name="tfUsername" value="" size="30" /></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="text" name="tfUserPassword" value="" size="30" /></td>
                        </tr>
                    </table>
                </div>

                <br>
                <br>
                <input class="button" type="submit" value="Create User" name="btnCreateUser" />
            </form>
        </div>
    </body>

</html>
