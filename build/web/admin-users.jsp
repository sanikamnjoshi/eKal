<%-- 
    Document   : admin-users
    Created on : 14 Mar, 2018, 12:04:56 PM
    Author     : sanika
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    
    <body style="background-image: url(bgl/bgl9.jpg);">
        
        
        <%!
            public class User {

                String URL = "jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull";
                String USERNAME = "root";
                String PASSWORD = "root";

                Connection connection = null;
                PreparedStatement selectUsers = null;
                ResultSet resultset = null;

                public User() {
                    try {
                        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                        selectUsers = connection.prepareStatement("SELECT * from userTbl");
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }

                public ResultSet getUsers() {
                    try {
                        resultset = selectUsers.executeQuery();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }

                    return resultset;
                }

            }
        %>

        <%
            User userObj = new User();
            ResultSet users = userObj.getUsers();
        %>
        
        
        <div class="sidenav">
            <span title="Admin Home"><a href="admin-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Users"><a href="#"><i class="material-icons">people</i></a></span>
            <span title="Calendar"><a href="admin-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="Events"><a href="admin-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="Tasks"><a href="admin-tasks.jsp"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
            <span title="Need help with eKal? Send us an email." class="helpoption"><a href="mailto:ekalhelp@gmail.com?subject=Need Help With eKal &body=Hello%2C%0D%0A%0D%0AI am facing the following issue with eKal:%0D%0A%0D%0A%0D%0A%0D%0A---PLEASE WRITE YOUR EMAIL ABOVE THIS LINE---" target="_top"><i class="material-icons">email</i></a></span>
        </div>

        <div class="main" align="center">
            <h1>Users</h1>
            
            <div class="usercontainer">
                
                <% users.next(); %>
                
                <table border="0" cellspacing="10">
                    <tr>
                        <td>Full Name</td>
                        <td><input type="text" name="tfUserFullName" size="30" disabled value="<%= users.getString("userFullName") %>" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="tfUsername" size="30" disabled value="<%= users.getString("userId") %>" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="tfUserPassword" size="30" disabled value="<%= users.getString("userPassword") %>" /></td>
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
