package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_002dhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Admin Home</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("            var Calendar = function (divId) {\n");
      out.write("\n");
      out.write("                //Store div id\n");
      out.write("                this.divId = divId;\n");
      out.write("\n");
      out.write("                // Days of week, starting on Sunday\n");
      out.write("                this.DaysOfWeek = [\n");
      out.write("                    'Sun',\n");
      out.write("                    'Mon',\n");
      out.write("                    'Tue',\n");
      out.write("                    'Wed',\n");
      out.write("                    'Thu',\n");
      out.write("                    'Fri',\n");
      out.write("                    'Sat'\n");
      out.write("                ];\n");
      out.write("\n");
      out.write("                // Months, stating on January\n");
      out.write("                this.Months = [\n");
      out.write("                    'January',\n");
      out.write("                    'February',\n");
      out.write("                    'March',\n");
      out.write("                    'April',\n");
      out.write("                    'May',\n");
      out.write("                    'June',\n");
      out.write("                    'July',\n");
      out.write("                    'August',\n");
      out.write("                    'September',\n");
      out.write("                    'October',\n");
      out.write("                    'November',\n");
      out.write("                    'December'\n");
      out.write("                ];\n");
      out.write("\n");
      out.write("                // Set the current month, year\n");
      out.write("                var d = new Date();\n");
      out.write("\n");
      out.write("                this.CurrentMonth = d.getMonth();\n");
      out.write("                this.CurrentYear = d.getFullYear();\n");
      out.write("\n");
      out.write("            };\n");
      out.write("\n");
      out.write("\n");
      out.write("            // Show current month\n");
      out.write("            Calendar.prototype.showCurrent = function () {\n");
      out.write("                this.showMonth(this.CurrentYear, this.CurrentMonth);\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            // Show month (year, month)\n");
      out.write("            Calendar.prototype.showMonth = function (y, m) {\n");
      out.write("\n");
      out.write("                var d = new Date()\n");
      out.write("                        // First day of the week in the selected month\n");
      out.write("                        , firstDayOfMonth = new Date(y, m, 1).getDay()\n");
      out.write("                        // Last day of the selected month\n");
      out.write("                        , lastDateOfMonth = new Date(y, m + 1, 0).getDate()\n");
      out.write("                        // Last day of the previous month\n");
      out.write("                        , lastDayOfLastMonth = m == 0 ? new Date(y - 1, 11, 0).getDate() : new Date(y, m, 0).getDate();\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                // Write selected month and year\n");
      out.write("                var html = '<span style=\"font-size:30px;\">' + this.Months[m] + ', ' + y + '</span><br><br>';\n");
      out.write("\n");
      out.write("                html += '<table class=\"fixed-tbl\"><col width=\"100px\" /><col width=\"100px\" /><col width=\"100px\" /><col width=\"100px\" /><col width=\"100px\" /><col width=\"100px\" /><col width=\"100px\" />';\n");
      out.write("\n");
      out.write("\n");
      out.write("                // Write the header of the days of the week\n");
      out.write("                html += '<tr>';\n");
      out.write("                for (var i = 0; i < this.DaysOfWeek.length; i++) {\n");
      out.write("                    html += '<td>' + this.DaysOfWeek[i] + '</td>';\n");
      out.write("                }\n");
      out.write("                html += '</tr>';\n");
      out.write("\n");
      out.write("                // Write the days\n");
      out.write("                var i = 1;\n");
      out.write("                do {\n");
      out.write("\n");
      out.write("                    var dow = new Date(y, m, i).getDay();\n");
      out.write("\n");
      out.write("                    // If Sunday, start new row\n");
      out.write("                    if (dow == 0) {\n");
      out.write("                        html += '<tr>';\n");
      out.write("                    }\n");
      out.write("                    // If not Sunday but first day of the month\n");
      out.write("                    // it will write the last days from the previous month\n");
      out.write("                    else if (i == 1) {\n");
      out.write("                        html += '<tr>';\n");
      out.write("                        var k = lastDayOfLastMonth - firstDayOfMonth + 1;\n");
      out.write("                        for (var j = 0; j < firstDayOfMonth; j++) {\n");
      out.write("                            html += '<td class=\"not-current\">' + k + '</td>';\n");
      out.write("                            k++;\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    // Write the current day in the loop\n");
      out.write("                    html += '<td>' + i + '</td>';\n");
      out.write("\n");
      out.write("                    // If Saturday, closes the row\n");
      out.write("                    if (dow == 6) {\n");
      out.write("                        html += '</tr>';\n");
      out.write("                    }\n");
      out.write("                    // If not Saturday, but last day of the selected month\n");
      out.write("                    // it will write the next few days from the next month\n");
      out.write("                    else if (i == lastDateOfMonth) {\n");
      out.write("                        var k = 1;\n");
      out.write("                        for (dow; dow < 6; dow++) {\n");
      out.write("                            html += '<td class=\"not-current\">' + k + '</td>';\n");
      out.write("                            k++;\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    i++;\n");
      out.write("                } while (i <= lastDateOfMonth);\n");
      out.write("\n");
      out.write("                // Closes table\n");
      out.write("                html += '</table>';\n");
      out.write("\n");
      out.write("                // Write HTML to the div\n");
      out.write("                document.getElementById(this.divId).innerHTML = html;\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            // On Load of the window\n");
      out.write("            window.onload = function () {\n");
      out.write("\n");
      out.write("                // Start calendar\n");
      out.write("                var c = new Calendar(\"divCalendar\");\n");
      out.write("                c.showCurrent();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            // Get element by id\n");
      out.write("            function getId(id) {\n");
      out.write("                return document.getElementById(id);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body style=\"background-image: url(bgl/bgl6.jpg);\">\n");
      out.write("\n");
      out.write("        <div class=\"sidenav\">\n");
      out.write("            <span title=\"Admin Home\"><a href=\"#\"><i class=\"material-icons\">home</i></a></span>\n");
      out.write("            <span title=\"Users\"><a href=\"admin-users.jsp\"><i class=\"material-icons\">people</i></a></span>\n");
      out.write("            <span title=\"Calendar\"><a href=\"admin-calendar.jsp\"><i class=\"material-icons\">date_range</i></a></span>\n");
      out.write("            <span title=\"Events\"><a href=\"admin-events.jsp\"><i class=\"material-icons\">event</i></a></span>\n");
      out.write("            <span title=\"Tasks\"><a href=\"admin-tasks.jsp\"><i class=\"material-icons\">done_all</i></a></span>\n");
      out.write("            <span title=\"Log Out\"><a href=\"logout.jsp\"><i class=\"material-icons\">close</i></a></span>\n");
      out.write("            <span title=\"Need help with eKal? Send us an email.\" class=\"helpoption\"><a href=\"mailto:ekalhelp@gmail.com?subject=Need Help With eKal &body=Hello%2C%0D%0A%0D%0AI am facing the following issue with eKal:%0D%0A%0D%0A%0D%0A%0D%0A---PLEASE WRITE YOUR EMAIL ABOVE THIS LINE---\" target=\"_top\"><i class=\"material-icons\">email</i></a></span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"main\" align=\"center\">\n");
      out.write("            <h1>Admin Home</h1>\n");
      out.write("\n");
      out.write("            <div class=\"calendarcontainer\" id=\"divCalendar\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
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
