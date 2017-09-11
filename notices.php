<?php
session_start();
require('dbc.php');
include('include.php');

$stmt = $pdo->query("SELECT * from notices order By through_date");

?>
<link rel='stylesheet' type='text/css' href='components/css/navbar.css'/>
<link rel='stylesheet' type='text/css' href='css/notice.css'/>
</head>
<body>
<?php
  if($_SESSION['teacher_status'] == 1){
    include("components/teacher-navbar.php");
  }
  else {
    include("components/navbar.php");
  }

?>
<table id='table-main' class="table table-bordered">
<thead>
<tr>
  <th>Event Name</th>
  <th>Description</th>
</tr>
</thead>
<tbody>
<?php
  while($row = $stmt->fetch()) {

    if($_SESSION['teacher_status'] == 1 || $row['userID'] == $_SESSION['userID']) {

      echo ("<tr><th>".$row['activity']."</th><th>".$row['notice_comment']."</th><th><a href='deletenotice.php?noticeID=".$row['noticeID']."'><img width='20' src='images/trashcan.png'></a></th></tr>");

    }
    else {

    echo ("<tr><th>".$row['activity']."</th><th>".$row['notice_comment']."</th></tr>");

    }

  }

?>
</tbod>
</table>

<?php if ($_SESSION['teacher_status'] == 1): ?>

  <h2 id='notice-title'>Post A Notice</h2>
  <form action='noticepost.php' method='POST'>
    <div id='post-notice' class='form-group'>
      <label>Event Name</label>
      <input type='text' name='eventname' class='form-control'>
      <label>Description</label>
      <input id='desc-box' type='text' name='description' class='form-control'>
      <label>Through Date</label>
      <input type='date' name='date_through'><br>
      <button type='submit' id='button-submit' class='btn btn-primary'>Post Notice</button>
    </div>
  </form>

<?php endif; ?>

</body>
