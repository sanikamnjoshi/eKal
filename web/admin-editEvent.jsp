<%-- 
    Document   : admin-createEvent
    Author     : sanika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Event Details</title>
        <link rel="stylesheet" href="style.css" type="text/css">


        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.js"></script>
        <script>
            $(document).ready(function () {
                $('input.timepicker').timepicker({
                    timeFormat: 'hh:mm p',
                    interval: 60,
                    minTime: '08:00am',
                    maxTime: '06:00pm',
                    startTime: '08:00am',
                    dynamic: false,
                    dropdown: true,
                    scrollbar: true
                });
            });
        </script>
        

    </head>
    <body>

        <div class="sidenav">
            <span title="Admin Home"><a href="admin-home.jsp"><i class="material-icons">home</i></a></span>
            <span title="Users"><a href="admin-users.jsp"><i class="material-icons">people</i></a></span>
            <span title="Calendar"><a href="admin-calendar.jsp"><i class="material-icons">date_range</i></a></span>
            <span title="Events"><a href="admin-events.jsp"><i class="material-icons">event</i></a></span>
            <span title="Tasks"><a href="admin-tasks.jsp"><i class="material-icons">done_all</i></a></span>
            <span title="Log Out"><a href="logout.jsp"><i class="material-icons">close</i></a></span>
        </div>


        <div class="main" align="center">
            <h1>Edit Event Details</h1>

            <div class="eventcontainer">


                <!-- db to be linked -->


                <table border="0" cellspacing="10">
                    <tr>
                        <td>Event ID</td>
                        <td style="padding-left: 10px"><input type="text" name="tfEventId" size="30" disabled/></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td style="padding-left: 10px"><input type="text" name="tfEventName" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td style="padding-left: 10px"><input type="text" name="tfEventDate" size="30" id="datepicker"/></td>
                    </tr>
                    <tr>
                        <td>Start Time</td>
                        <td style="padding-left: 10px"><input type="text" name="tfEventStartTime" size="30" class="timepicker" /></td>
                    </tr>
                    <tr>
                        <td>Minutes</td>
                        <td style="padding-left: 10px"><input type="text" name="tfEventDuration" size="30" /></td>
                    </tr>
                    <tr>
                        <td style="position: absolute;">Participants</td>
                        <td style="padding-left: 10px">

                            <div class="checkboxscroll">
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                                <input type="checkbox" /> This is checkbox <br />
                            </div>
                        </td>
                    </tr>
                </table>
            </div>

            <br>

            <input class="button" type="button" value="Previous" name="btnPreviousEvent" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Next" name="btnNextEvent" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Cancel" name="btnCancel" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input class="button" type="button" value="Save" name="btnSave" />

        </div>        


    </body>
</html>
