<%-- 
    Document   : admin-createUser
    Author     : sanika
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>

    <body style="background-image: url(bgl/bgl3.jpg);">


        <%!
            public class User {

                String URL = "jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull";
                String USERNAME = "root";
                String PASSWORD = "root";

                Connection connection = null;
                PreparedStatement insertUsers = null;
                ResultSet resultset = null;

                public User() {
                    try {
                        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                        insertUsers = connection.prepareStatement("INSERT INTO userTbl(userId, userFullName, userPassword) VALUES(?, ?, ?)");
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }

                public int setUsers(String userId, String userFullName, String userPassword) {
                    int result = 0;

                    try {
                        insertUsers.setString(1, userId);
                        insertUsers.setString(2, userFullName);
                        insertUsers.setString(3, userPassword);
                        result = insertUsers.executeUpdate();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }

                    return result;
                }

            }
        %>

        <%
            int result = 0;

            String userId = new String();
            String userFullName = new String();
            String userPassword = new String();

            if (request.getParameter("tfUsername") != null) {
                userId = request.getParameter("tfUsername");
            }

            if (request.getParameter("tfUserFullName") != null) {
                userFullName = request.getParameter("tfUserFullName");
            }

            if (request.getParameter("tfUserPassword") != null) {
                userPassword = request.getParameter("tfUserPassword");
            }

            User userObj = new User();
            result = userObj.setUsers(userId, userFullName, userPassword);
        %>


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


            <form name="admin-createUser-form" action="admin-createUser.jsp" method="POST">
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

                <input class="button" type="reset" value="Clear" name="btnClear" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input class="button" type="submit" value="Create User" name="btnCreateUser" />
            </form>
        </div>
    </body>

</html>
