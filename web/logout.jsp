<%-- 
    Document   : logout
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged Out</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        
        <style type="text/css">
            a:visited, a:link, a:active, a:focus {
                text-decoration: none;
                color: #ff6666;
            }
            
            a:hover {
                color: #ff6633;
            }		
	</style>

        
    </head>
    
    <body style="background-image: url(bgl/bgl15.jpg);">
        
        <div class="sidenav">
            <span title="License"><a href="license.html" target="_blank"><i class="material-icons">copyright</i></a></span>
            <span title="eKal GitHub Repo"><a href="https://github.com/sanikamnjoshi/eKal" target="_blank"><i class="material-icons">code</i></a></span>
            <span title="Need help with eKal? Send us an email." class="helpoption"><a href="mailto:ekalhelp@gmail.com?subject=Need Help With eKal &body=Hello%2C%0D%0A%0D%0AI am facing the following issue with eKal:%0D%0A%0D%0A%0D%0A%0D%0A---PLEASE WRITE YOUR EMAIL ABOVE THIS LINE---" target="_top"><i class="material-icons">email</i></a></span>
        </div>
        
        <div class="main" align="center">
            <h1>Thanks for using eKal!</h1>
            You have successfully logged out.
            <br>
            <br>
            <br>
            <a href="user-login.jsp">User Login</a>
            <a href="admin-login.jsp">Admin Login</a>
        </div>
    </body>
</html>