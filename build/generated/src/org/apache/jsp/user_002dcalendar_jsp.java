package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_002dcalendar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Calendar</title>\n");
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
      out.write("            // Goes to next month\n");
      out.write("            Calendar.prototype.nextMonth = function () {\n");
      out.write("                if (this.CurrentMonth == 11) {\n");
      out.write("                    this.CurrentMonth = 0;\n");
      out.write("                    this.CurrentYear = this.CurrentYear + 1;\n");
      out.write("                } else {\n");
      out.write("                    this.CurrentMonth = this.CurrentMonth + 1;\n");
      out.write("                }\n");
      out.write("                this.showCurrent();\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            // Goes to previous month\n");
      out.write("            Calendar.prototype.previousMonth = function () {\n");
      out.write("                if (this.CurrentMonth == 0) {\n");
      out.write("                    this.CurrentMonth = 11;\n");
      out.write("                    this.CurrentYear = this.CurrentYear - 1;\n");
      out.write("                } else {\n");
      out.write("                    this.CurrentMonth = this.CurrentMonth - 1;\n");
      out.write("                }\n");
      out.write("                this.showCurrent();\n");
      out.write("            };\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            // change month as per dropdown\n");
      out.write("            Calendar.prototype.changeMonth = function (monthVal) {\n");
      out.write("                this.CurrentMonth = monthVal;\n");
      out.write("\n");
      out.write("                this.showCurrent();\n");
      out.write("            };\n");
      out.write("\n");
      out.write("            // change year as per dropdown\n");
      out.write("            Calendar.prototype.changeYear = function (yearVal) {\n");
      out.write("                this.CurrentYear = yearVal;\n");
      out.write("\n");
      out.write("                this.showCurrent();\n");
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
      out.write("                var html = this.Months[m] + ', ' + y + '<br><br>';\n");
      out.write("\n");
      out.write("                html += '<table class=\"fixed-tbl\"><col width=\"80px\" /><col width=\"80px\" /><col width=\"80px\" /><col width=\"80px\" /><col width=\"80px\" /><col width=\"80px\" /><col width=\"80px\" />';\n");
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
      out.write("                // Bind next and previous button clicks\n");
      out.write("                getId('btnNext').onclick = function () {\n");
      out.write("                    c.nextMonth();\n");
      out.write("                };\n");
      out.write("                getId('btnPrev').onclick = function () {\n");
      out.write("                    c.previousMonth();\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                getId('ddMonth').onchange = function () {\n");
      out.write("                    var ddMonth0 = document.getElementById(\"ddMonth\");\n");
      out.write("                    var monthVal = Number(ddMonth0.options[ddMonth0.selectedIndex].value);\n");
      out.write("                    c.changeMonth(monthVal);\n");
      out.write("                };\n");
      out.write("                getId('ddYear').onchange = function () {\n");
      out.write("                    var ddYear0 = document.getElementById(\"ddYear\");\n");
      out.write("                    var yearVal = Number(ddYear0.options[ddYear0.selectedIndex].value);\n");
      out.write("                    c.changeYear(yearVal);\n");
      out.write("                };\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            // Get element by id\n");
      out.write("            function getId(id) {\n");
      out.write("                return document.getElementById(id);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"sidenav\">\n");
      out.write("            <span title=\"Home\"><a href=\"user-home.jsp\"><i class=\"material-icons\">home</i></a>\n");
      out.write("            <span title=\"Calendar\"><a href=\"#\"><i class=\"material-icons\">date_range</i></a>\n");
      out.write("            <span title=\"My Events\"><a href=\"user-events.jsp\"><i class=\"material-icons\">event</i></a>\n");
      out.write("            <span title=\"My Tasks\"><a href=\"user-tasks.jsp\"><i class=\"material-icons\">done_all</i></a>\n");
      out.write("            <span title=\"Log Out\"><a href=\"logout.jsp\"><i class=\"material-icons\">close</i></a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"main\" align=\"center\">\n");
      out.write("            <h1>Calendar</h1>\n");
      out.write("            \n");
      out.write("\n");
      out.write("            <div class=\"calendarcontainer\" id=\"divCalendar\">\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("            <input class=\"button\" type=\"button\" value=\"Previous\" id=\"btnPrev\" />\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input class=\"button\" type=\"button\" value=\"Next\" id=\"btnNext\" />\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <select class=\"dropdown\" id=\"ddMonth\">\n");
      out.write("                <option disabled selected>Select Month</option>\n");
      out.write("                <option value=0>January</option>\n");
      out.write("                <option value=1>February</option>\n");
      out.write("                <option value=2>March</option>\n");
      out.write("                <option value=3>April</option>\n");
      out.write("                <option value=4>May</option>\n");
      out.write("                <option value=5>June</option>\n");
      out.write("                <option value=6>July</option>\n");
      out.write("                <option value=7>August</option>\n");
      out.write("                <option value=8>September</option>\n");
      out.write("                <option value=9>October</option>\n");
      out.write("                <option value=10>November</option>\n");
      out.write("                <option value=11>December</option>\n");
      out.write("            </select>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <select class=\"dropdown\" id=\"ddYear\">\n");
      out.write("                <option disabled selected>Select Year</option>\n");
      out.write("                <option value=2017>2017</option>\n");
      out.write("                <option value=2018>2018</option>\n");
      out.write("                <option value=2019>2019</option>\n");
      out.write("                <option value=2020>2020</option>\n");
      out.write("                <option value=2021>2021</option>\n");
      out.write("                <option value=2022>2022</option>\n");
      out.write("            </select>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
