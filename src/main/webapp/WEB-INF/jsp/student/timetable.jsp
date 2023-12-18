<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Student Dashboard</title>
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp"
      rel="stylesheet"
    />
    <link rel="shortcut icon" href="../../../../../../../../../../Downloads/Student-Dashboard-main/Student-Dashboard-main/images/logo.png" />
    <link rel="stylesheet" href="../../../../../../../../../../Downloads/Student-Dashboard-main/Student-Dashboard-main/studentstyle.css" />
  </head>
  <body>
    <header>
      <div class="logo">
        <img src="../../../../../../../../../../Downloads/Student-Dashboard-main/Student-Dashboard-main/images/logo.png" alt="" />
        <h2>U<span class="danger">M</span>S</h2>
      </div>
      <div class="navbar">
        <a href="index.jsp">
          <span class="material-icons-sharp">home</span>
          <h3>Home</h3>
        </a>
        <a href="timetable.html" class="active" onclick="timeTableAll()">
          <span class="material-icons-sharp">today</span>
          <h3>Time Table</h3>
        </a>
        <a href="exam.jsp">
          <span class="material-icons-sharp">grid_view</span>
          <h3>Examination</h3>
        </a>
        <a href="password.jsp">
          <span class="material-icons-sharp">password</span>
          <h3>Change Password</h3>
        </a>
        <a href="#">
          <span class="material-icons-sharp">logout</span>
          <h3>Logout</h3>
        </a>
      </div>
      <div id="profile-btn" style="display: none">
        <span class="material-icons-sharp">person</span>
      </div>
      <div class="theme-toggler">
        <span class="material-icons-sharp active">light_mode</span>
        <span class="material-icons-sharp">dark_mode</span>
      </div>
    </header>

    <main style="margin: 0">
      <div class="timetable active" id="timetable">
        <div>
          <span id="prevDay">&lt;</span>
          <h2>Today's Timetable</h2>
          <span id="nextDay">&gt;</span>
        </div>
        <table>
          <thead>
            <tr>
              <th>Time</th>
              <th>Room No.</th>
              <th>Subject</th>
              <th></th>
            </tr>
          </thead>
          <tbody></tbody>
        </table>
      </div>
    </main>
  </body>

  <script src="../../../../../../../../../../Downloads/Student-Dashboard-main/Student-Dashboard-main/timeTable.js"></script>
  <script src="../../../../../../../../../../Downloads/Student-Dashboard-main/Student-Dashboard-main/studentapp.js"></script>
</html>
