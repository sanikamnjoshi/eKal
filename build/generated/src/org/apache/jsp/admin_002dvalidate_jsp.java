package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class admin_002dvalidate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
 Class.forName("com.mysql.jdbc.Driver");
      out.write('\n');
      out.write('\n');


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

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
