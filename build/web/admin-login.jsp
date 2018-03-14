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

    <body>

        <div class="sidenav">
            <span title="License"><a href="license.html" target="_blank"><i class="material-icons">copyright</i></a></span>
        </div>
        
        <div class="main" align="center">
            <h1>Admin Login</h1>
            <br>
            <div class="login-box">
                <form name="admin-login-form" action="admin-validate.jsp" method="POST">
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
                    <br>
                    <input class="button" type="submit" value="Log In" name="btnAdminLogin" />
                </form>
            </div>
        </div>
    </body>
</html>
