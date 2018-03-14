<%-- 
    Document   : user-login
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>

    <body> 

        <div class="sidenav">
            <span title="License"><a href="license.html" target="_blank"><i class="material-icons">copyright</i></a></span>
            <span title="eKal GitHub Repo"><a href="https://github.com/sanikamnjoshi/eKal" target="_blank"><i class="material-icons">code</i></a></span>
        </div>

        <div class="main" align="center">
            <h1>User Login</h1>
            <br>
            <div class="login-box">
                <form name="user-login-form" action="user-validate.jsp" method="POST">
                    <table border="0" cellspacing="10">
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
                    <input class="button" type="submit" value="Log In" name="btnUserLogin" />
                </form>
            </div>
        </div>
    </body>

</html>
