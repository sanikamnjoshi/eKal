<%-- 
    Document   : user-calendar
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendar</title>
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

            // Goes to next month
            Calendar.prototype.nextMonth = function () {
                if (this.CurrentMonth == 11) {
                    this.CurrentMonth = 0;
                    this.CurrentYear = this.CurrentYear + 1;
                } else {
                    this.CurrentMonth = this.CurrentMonth + 1;
                }
                this.showCurrent();
            };

            // Goes to previous month
            Calendar.prototype.previousMonth = function () {
                if (this.CurrentMonth == 0) {
                    this.CurrentMonth = 11;
                    this.CurrentYear = this.CurrentYear - 1;
                } else {
                    this.CurrentMonth = this.CurrentMonth - 1;
                }
                this.showCurrent();
            };



            // change month as per dropdown
            Calendar.prototype.changeMonth = function (monthVal) {
                this.CurrentMonth = monthVal;

                this.showCurrent();
            };

            // change year as per dropdown
            Calendar.prototype.changeYear = function (yearVal) {
                this.CurrentYear = yearVal;

                this.showCurrent();
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

                // Bind next and previous button clicks
                getId('btnNext').onclick = function () {
                    c.nextMonth();
                };
                getId('btnPrev').onclick = function () {
                    c.previousMonth();
                };

                getId('ddMonth').onchange = function () {
                    var ddMonth0 = document.getElementById("ddMonth");
                    var monthVal = Number(ddMonth0.options[ddMonth0.selectedIndex].value);
                    c.changeMonth(monthVal);
                };
                getId('ddYear').onchange = function () {
                    var ddYear0 = document.getElementById("ddYear");
                    var yearVal = Number(ddYear0.options[ddYear0.selectedIndex].value);
                    c.changeYear(yearVal);
                };

            }
            // Get element by id
            function getId(id) {
                return document.getElementById(id);
            }

        </script>

    </head>

    <body style="background-image: url(bgl/bgl10.jpg);">

        <div class="sidenav">
            <span title="Home"><a href="user-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Calendar"><a href="#"><i class="material-icons">date_range</i></a></span>
            <span title="My Events"><a href="user-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="My Tasks"><a href="user-tasks.jsp"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
        </div>

        <div class="main" align="center">
            <h1>Calendar</h1>


            <div class="calendarcontainer" id="divCalendar">
            </div>

            <br>
            <br>
            <input class="button" type="button" value="Previous" id="btnPrev" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Next" id="btnNext" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <select class="dropdown" id="ddMonth">
                <option disabled selected>Select Month</option>
                <option value=0>January</option>
                <option value=1>February</option>
                <option value=2>March</option>
                <option value=3>April</option>
                <option value=4>May</option>
                <option value=5>June</option>
                <option value=6>July</option>
                <option value=7>August</option>
                <option value=8>September</option>
                <option value=9>October</option>
                <option value=10>November</option>
                <option value=11>December</option>
            </select>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <select class="dropdown" id="ddYear">
                <option disabled selected>Select Year</option>
                <option value=2017>2017</option>
                <option value=2018>2018</option>
                <option value=2019>2019</option>
                <option value=2020>2020</option>
                <option value=2021>2021</option>
                <option value=2022>2022</option>
            </select>

        </div>

    </body>
</html>