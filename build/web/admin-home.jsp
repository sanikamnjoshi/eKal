<%-- 
    Document   : admin-home
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link rel="stylesheet" href="style.css" type="text/css">

        <script type="text/javascript">

            var Calendar = function (divId) {

                //Store div id
                this.divId = divId;

                // Days of week, starting on Sunday
                this.DaysOfWeek = [
                    'Sun',
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat'
                ];

                // Months, stating on January
                this.Months = [
                    'January',
                    'February',
                    'March',
                    'April',
                    'May',
                    'June',
                    'July',
                    'August',
                    'September',
                    'October',
                    'November',
                    'December'
                ];

                // Set the current month, year
                var d = new Date();

                this.CurrentMonth = d.getMonth();
                this.CurrentYear = d.getFullYear();

            };


            // Show current month
            Calendar.prototype.showCurrent = function () {
                this.showMonth(this.CurrentYear, this.CurrentMonth);
            };

            // Show month (year, month)
            Calendar.prototype.showMonth = function (y, m) {

                var d = new Date()
                        // First day of the week in the selected month
                        , firstDayOfMonth = new Date(y, m, 1).getDay()
                        // Last day of the selected month
                        , lastDateOfMonth = new Date(y, m + 1, 0).getDate()
                        // Last day of the previous month
                        , lastDayOfLastMonth = m == 0 ? new Date(y - 1, 11, 0).getDate() : new Date(y, m, 0).getDate();



                // Write selected month and year
                var html = '<span style="font-size:30px;">' + this.Months[m] + ', ' + y + '</span><br><br>';

                html += '<table class="fixed-tbl"><col width="100px" /><col width="100px" /><col width="100px" /><col width="100px" /><col width="100px" /><col width="100px" /><col width="100px" />';


                // Write the header of the days of the week
                html += '<tr>';
                for (var i = 0; i < this.DaysOfWeek.length; i++) {
                    html += '<td>' + this.DaysOfWeek[i] + '</td>';
                }
                html += '</tr>';

                // Write the days
                var i = 1;
                do {

                    var dow = new Date(y, m, i).getDay();

                    // If Sunday, start new row
                    if (dow == 0) {
                        html += '<tr>';
                    }
                    // If not Sunday but first day of the month
                    // it will write the last days from the previous month
                    else if (i == 1) {
                        html += '<tr>';
                        var k = lastDayOfLastMonth - firstDayOfMonth + 1;
                        for (var j = 0; j < firstDayOfMonth; j++) {
                            html += '<td class="not-current">' + k + '</td>';
                            k++;
                        }
                    }

                    // Write the current day in the loop
                    html += '<td>' + i + '</td>';

                    // If Saturday, closes the row
                    if (dow == 6) {
                        html += '</tr>';
                    }
                    // If not Saturday, but last day of the selected month
                    // it will write the next few days from the next month
                    else if (i == lastDateOfMonth) {
                        var k = 1;
                        for (dow; dow < 6; dow++) {
                            html += '<td class="not-current">' + k + '</td>';
                            k++;
                        }
                    }

                    i++;
                } while (i <= lastDateOfMonth);

                // Closes table
                html += '</table>';

                // Write HTML to the div
                document.getElementById(this.divId).innerHTML = html;
            };

            // On Load of the window
            window.onload = function () {

                // Start calendar
                var c = new Calendar("divCalendar");
                c.showCurrent();

            }
            // Get element by id
            function getId(id) {
                return document.getElementById(id);
            }

        </script>

    </head>

    <body style="background-image: url(bgl/bgl6.jpg);">

        <div class="sidenav">
            <span title="Admin Home"><a href="#"><i class="material-icons">home</i></a></span>
            <span title="Users"><a href="admin-users.jsp"><i class="material-icons">people</i></a></span>
            <span title="Calendar"><a href="admin-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="Events"><a href="admin-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="Tasks"><a href="admin-tasks.jsp"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
        </div>

        <div class="main" align="center">
            <h1>Admin Home</h1>

            <div class="calendarcontainer" id="divCalendar">
            </div>

        </div>

    </body>
</html>
