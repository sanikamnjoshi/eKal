<%-- 
    Document   : admin-validate
    Author     : sanika
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%

    try {

        String adminId = request.getParameter("tfAdminId");
        String adminPassword = request.getParameter("tfAdminPassword");

        String URL = "jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull";
        String USERNAME = "root";
        String PASSWORD = "root";

        Connection connection = null;
        PreparedStatement insertUsers = null;
        ResultSet resultset = null;

        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        insertUsers = connection.prepareStatement("SELECT * FROM adminTbl WHERE adminId=? AND adminPassword=?");

        insertUsers.setString(1, adminId);
        insertUsers.setString(2, adminPassword);
        resultset = insertUsers.executeQuery();

        if (resultset.next()) {
            out.println("Valid login credentials.");
        } else {
            out.println("Invalid login credentials.");
        }

    } catch (Exception e) {
        out.println("Something went wrong !! Please try again");
    }
%>