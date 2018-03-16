package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_002dusers_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Users</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body style=\"background-image: url(bgl/bgl9.jpg);\">\n");
      out.write("        \n");
      out.write("        <div class=\"sidenav\">\n");
      out.write("            <span title=\"Admin Home\"><a href=\"admin-home.jsp\"><i class=\"material-icons\">home</i></a></span>\n");
      out.write("            <span title=\"Users\"><a href=\"#\"><i class=\"material-icons\">people</i></a></span>\n");
      out.write("            <span title=\"Calendar\"><a href=\"admin-calendar.jsp\"><i class=\"material-icons\">date_range</i></a></span>\n");
      out.write("            <span title=\"Events\"><a href=\"admin-events.jsp\"><i class=\"material-icons\">event</i></a></span>\n");
      out.write("            <span title=\"Tasks\"><a href=\"admin-tasks.jsp\"><i class=\"material-icons\">done_all</i></a></span>\n");
      out.write("            <span title=\"Log Out\"><a href=\"logout.jsp\"><i class=\"material-icons\">close</i></a></span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"main\" align=\"center\">\n");
      out.write("            <h1>Users</h1>\n");
      out.write("            \n");
      out.write("            <div class=\"usercontainer\">\n");
      out.write("                <table border=\"0\" cellspacing=\"10\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Full Name</td>\n");
      out.write("                        <td><input type=\"text\" name=\"tfUserFullName\" value=\"\" size=\"30\" disabled /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Username</td>\n");
      out.write("                        <td><input type=\"text\" name=\"tfUsername\" value=\"\" size=\"30\" disabled /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password</td>\n");
      out.write("                        <td><input type=\"text\" name=\"tfUserPassword\" value=\"\" size=\"30\" disabled /></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <input class=\"button\" type=\"button\" value=\"Previous\" name=\"btnPreviousUser\" />\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input class=\"button\" type=\"button\" value=\"Next\" name=\"btnNextUser\" />\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            \n");
      out.write("            <form action=\"admin-editUser.jsp\" method=\"POST\" style=\"display:inline-block;\">\n");
      out.write("                <input class=\"button\" type=\"submit\" value=\"Edit User\" name=\"btnEditUser\" />\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\n");
      out.write("            <form action=\"admin-createUser.jsp\" method=\"POST\" style=\"display:inline-block;\">\n");
      out.write("                <input class=\"button\" type=\"submit\" value=\"Create User\" name=\"btnCreateUser\" />\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
