package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_002deditEvent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Edit Event Details</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-1.12.4.js\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(function () {\n");
      out.write("                $(\"#datepicker\").datepicker();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css\">\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('input.timepicker').timepicker({\n");
      out.write("                    timeFormat: 'hh:mm p',\n");
      out.write("                    interval: 60,\n");
      out.write("                    minTime: '08:00am',\n");
      out.write("                    maxTime: '06:00pm',\n");
      out.write("                    startTime: '08:00am',\n");
      out.write("                    dynamic: false,\n");
      out.write("                    dropdown: true,\n");
      out.write("                    scrollbar: true\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            var expanded = false;\n");
      out.write("\n");
      out.write("            function showCheckboxes() {\n");
      out.write("                var checkboxes = document.getElementById(\"checkboxes\");\n");
      out.write("                if (!expanded) {\n");
      out.write("                    checkboxes.style.display = \"block\";\n");
      out.write("                    expanded = true;\n");
      out.write("                } else {\n");
      out.write("                    checkboxes.style.display = \"none\";\n");
      out.write("                    expanded = false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"sidenav\">\n");
      out.write("            <span title=\"Admin Home\"><a href=\"admin-home.jsp\"><i class=\"material-icons\">home</i></a></span>\n");
      out.write("            <span title=\"Users\"><a href=\"admin-users.jsp\"><i class=\"material-icons\">people</i></a></span>\n");
      out.write("            <span title=\"Calendar\"><a href=\"admin-calendar.jsp\"><i class=\"material-icons\">date_range</i></a></span>\n");
      out.write("            <span title=\"Events\"><a href=\"admin-events.jsp\"><i class=\"material-icons\">event</i></a></span>\n");
      out.write("            <span title=\"Tasks\"><a href=\"admin-tasks.jsp\"><i class=\"material-icons\">done_all</i></a></span>\n");
      out.write("            <span title=\"Log Out\"><a href=\"logout.jsp\"><i class=\"material-icons\">close</i></a></span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"main\" align=\"center\">\n");
      out.write("            <h1>Edit Event Details</h1>\n");
      out.write("\n");
      out.write("            <div class=\"eventcontainer\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- db to be linked -->\n");
      out.write("\n");
      out.write("\n");
      out.write("                <table border=\"0\" cellspacing=\"10\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Event ID</td>\n");
      out.write("                        <td style=\"padding-left: 10px\"><input type=\"text\" name=\"tfEventId\" size=\"30\" disabled/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Name</td>\n");
      out.write("                        <td style=\"padding-left: 10px\"><input type=\"text\" name=\"tfEventName\" size=\"30\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Date</td>\n");
      out.write("                        <td style=\"padding-left: 10px\"><input type=\"text\" name=\"tfEventDate\" size=\"30\" id=\"datepicker\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Start Time</td>\n");
      out.write("                        <td style=\"padding-left: 10px\"><input type=\"text\" name=\"tfEventStartTime\" size=\"30\" class=\"timepicker\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Minutes</td>\n");
      out.write("                        <td style=\"padding-left: 10px\"><input type=\"text\" name=\"tfEventDuration\" size=\"30\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td style=\"position: absolute;\">Participants</td>\n");
      out.write("                        <td style=\"padding-left: 10px\">\n");
      out.write("                            <form>\n");
      out.write("                                <div class=\"multiselect\">\n");
      out.write("                                    <div class=\"selectBox\" onclick=\"showCheckboxes()\">\n");
      out.write("                                        <select class=\"dropdown-light\" multiple size=\"1\">\n");
      out.write("                                            <option>Select Participants</option>\n");
      out.write("                                        </select>\n");
      out.write("                                        <div class=\"overSelect\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div id=\"checkboxes\">\n");
      out.write("                                        <label for=\"one\">\n");
      out.write("                                            <input type=\"checkbox\" id=\"one\" />First checkbox</label>\n");
      out.write("                                        <label for=\"two\">\n");
      out.write("                                            <input type=\"checkbox\" id=\"two\" />Second checkbox</label>\n");
      out.write("                                        <label for=\"three\">\n");
      out.write("                                            <input type=\"checkbox\" id=\"three\" />Third checkbox</label>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("\n");
      out.write("            <input class=\"button\" type=\"button\" value=\"Previous\" name=\"btnPreviousEvent\" />\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input class=\"button\" type=\"button\" value=\"Next\" name=\"btnNextEvent\" />\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input class=\"button\" type=\"button\" value=\"Cancel\" name=\"btnCancel\" />\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input class=\"button\" type=\"button\" value=\"Save\" name=\"btnSave\" />\n");
      out.write("\n");
      out.write("        </div>        \n");
      out.write("\n");
      out.write("\n");
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