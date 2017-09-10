<?php
session_start();
require('dbc.php');
include('include.php');

if (date( "w", $timestamp) == 0) {
  $subjectday = 1;
}
if (date( "w", $timestamp) == 1) {
  $subjectday = 2;
}
if (date( "w", $timestamp) == 2) {
  $subjectday = 3;
}
if (date( "w", $timestamp) == 3) {
  $subjectday = 4;
}
if (date( "w", $timestamp) == 4) {
  $subjectday = 5;
}
if (date( "w", $timestamp) == 5) {
  $subjectday = 6;
}
if (date( "w", $timestamp) == 6) {
  $subjectday = 7;
}

$classcode = $_GET['class'];
$period = $_GET['period'];

$stmt = $pdo->query("SELECT userID from time_table where day=".$subjectday." and p".$period."=\"".$classcode."\"");

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
<link rel='stylesheet' type='text/css' href='css/markrole.css'/>
</head>
<body>

<form action="" method='POST'>
<?php

while ($row = $stmt->fetch()) {
  $stmt2 = $pdo->query("SELECT * FROM users where userID=".$row[userID]);

  while ($row2 = $stmt2->fetch()) {
    echo ('<div id="box-div" class="col-md-3"><img id="profile-image" src="user-image/profile-pic.png"/>'.$row2['lastname'].', '.$row2['firstname'].'<div class="checkbox"><label><input type="checkbox" name="absent['.$row2['userID'].']" value="">Absent</label></div></div>');
  }
}
?>
<div id='main-submit' class='container'>
<button type="submit" id='button-mark' class="btn btn-primary">Submit Role</button>
</div>
</form>
<?php
$absent = $_POST['absent'];

$stmt3 = $pdo->prepare('INSERT INTO attendence (userID, period_number, absent_date) VALUES (?, ?, ?)');

foreach($absent as $key => $value) {

  $stmt3->execute([$key, $period, date("Y/m/d")]);

}
?>
</body>
