<%-- 
    Document   : admin-login
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>

    <body style="background-image: url(bgl/bgl7.jpg);">

        <div class="sidenav">
            <span title="License"><a href="license.html" target="_blank"><i class="material-icons">copyright</i></a></span>
            <span title="eKal GitHub Repo"><a href="https://github.com/sanikamnjoshi/eKal" target="_blank"><i class="material-icons">code</i></a></span>
            <span title="Need help with eKal? Send us an email." class="helpoption"><a href="mailto:ekalhelp@gmail.com?subject=Need Help With eKal &body=Hello%2C%0D%0A%0D%0AI am facing the following issue with eKal:%0D%0A%0D%0A%0D%0A%0D%0A---PLEASE WRITE YOUR EMAIL ABOVE THIS LINE---" target="_top"><i class="material-icons">email</i></a></span>
        </div>

        <div class="main" align="center">
            <h1>Admin Login</h1>
            
            <!-- change form action from admin-home to admin-validate -->
            <form name="admin-login-form" action="admin-home.jsp" method="POST">
                <div class="logincontainer">
                    <table border="0" cellspacing="10">
                        <tr>
                            <td>Admin ID</td>
                            <td><input type="text" name="tfAdminId" value="" size="30" /></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="tfAdminPassword" value="" size="30" /></td>
                        </tr>
                    </table>
                </div>

                <br>
                <br>
                <input class="button" type="submit" value="Log In" name="btnAdminLogin" />
            </form>
        </div>
    </body>
</html>
