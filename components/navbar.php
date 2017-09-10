<nav id='navbar-top' class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img id='logo-image' src='images/logo.png'/></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a id='nav-text' href="<?php if($_SESSION['teacher_status'] == 1){echo "teacher-dashboard.php";} else {echo"student-dashboard.php";}?>">Dashboard</a></li>
        <li><a id='nav-text' href="#">Activities</a></li>
        <li><a id='nav-text' href="#">Timetable</a></li>
        <li><a id='nav-text' href="#">Notices</a></li>
        <li><a id='nav-text' href="#">Results</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a id='nav-text' href="<?php echo "login.php";?>">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
