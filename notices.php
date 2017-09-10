<?php
session_start();
require('dbc.php');
require('functions.php');

$stmt = $pdo->query("SELECT * from notices order By through_date");

?>
<?php include('include.php'); ?>
<?php if($_SESSION['teacher_status'] == 1){
  include("components/teacher-navbar.php");
}
else {
  include("components/navbar.php");
}
?>
<link rel='stylesheet' type='text/css' href='components/css/navbar.css'/>
<link rel='stylesheet' type='text/css' href='css/notice.css'/>
</head>
<body>
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

    echo ("<tr><th>".$row['activity']."</th><th>".$row['notice_comment']."</th></tr>");

  }
  ?>
</tbody>
</table>
<?php
if($_SESSION[teacher_status] == 1){
  echo ("
  <h2 id='notice-title'>Post A Notice</h2>
  <form action='' method='POST'>
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

  ");
}
?>
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
$event_name = $_POST['eventname'];
$description = $_POST['description'];
$date_through = $_POST['date_through'];

$stmt2 = $link->prepare('INSERT INTO notices (userID, activity, notice_comment, through_date) VALUES ('.$_SESSION['userID'].', "' $event_name.'", "'.$description.'", "'.$date_through.'")');
$stmt2->execut();
}
?>
</body>
