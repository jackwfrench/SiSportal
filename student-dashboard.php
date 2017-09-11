
<?php
session_start();
require('dbc.php');
include('include.php');


//Data from database
$stmt = $pdo->query("SELECT * from time_table where userID=".$_SESSION['userID']."");

$subjects = array();

//Timetable
while ($row = $stmt->fetch()) {
  array_push($subjects, $row['p1'], $row['p2'], $row['p3'], $row['p4']);
}

$day1 = array($subjects[0], $subjects[1], $subjects[2], $subjects[3]);
$day2 = array($subjects[4], $subjects[5], $subjects[6], $subjects[7]);
$day3 = array($subjects[8], $subjects[9], $subjects[10], $subjects[11]);
$day4 = array($subjects[12], $subjects[13], $subjects[14], $subjects[15]);
$day5 = array($subjects[16], $subjects[17], $subjects[18], $subjects[19]);
$day6 = array($subjects[20], $subjects[21], $subjects[22], $subjects[23]);
$day7 = array($subjects[24], $subjects[25], $subjects[26], $subjects[27]);
$day8 = array($subjects[28], $subjects[29], $subjects[30], $subjects[31]);
$day9 = array($subjects[32], $subjects[33], $subjects[34], $subjects[35]);

if (date( "w", $timestamp) == 0) {
  $subjectday = $day1;
}
if (date( "w", $timestamp) == 1) {
  $subjectday = $day2;
}
if (date( "w", $timestamp) == 2) {
  $subjectday = $day3;
}
if (date( "w", $timestamp) == 3) {
  $subjectday = $day4;
}
if (date( "w", $timestamp) == 4) {
  $subjectday = $day5;
}
if (date( "w", $timestamp) == 5) {
  $subjectday = $day6;
}
if (date( "w", $$timestamp) == 6) {
  $subjectday = $day7;
}

//subjects
$stmt2 = $pdo->query("SELECT classcode from student_subject where userID=".$_SESSION['userID']."");

$subjects2 = array();

//Timetable
while ($row2 = $stmt2->fetch()) {
  array_push($subjects2, $row2['classcode']);
}

?>
<link rel='stylesheet' type='text/css' href='css/student-dashboard.css'/>
</head>
  <body>
    <?php require('components/navbar.php'); ?>
    <div class='container'>
     <div id='dashboard-group'>
      <div id='dash-box' class='col-md-4'>
        <img id='profile-image' src='user-image/profile-pic<?php echo ($_SESSION['userID']); ?>.png'/>
      </div>
      <div id='dash-box' class='col-md-4'>
        <div id='small-box-group'>
          <div class='box-rows'>
            <p><strong>P1:</strong> <?php print_r($subjectday[0]);?></p>
          </div>
          <div class='box-rows'>
            <p><strong>P2:</strong> <?php print_r($subjectday[1]);?></p>
          </div>
          <div class='box-rows'>
            <p><strong>P3:</strong> <?php print_r($subjectday[2]);?></p>
          </div>
          <div class='box-rows'>
            <p><strong>P4:</strong> <?php print_r($subjectday[3]);?></p>
          </div>
      </div>
    </div>
    <div id='dash-box' class='col-md-4'>
      <div id='small-box-group'>
        <div class='box-rows-1'>
          <p>1: <?php print_r($subjects2[0]); ?></p>
        </div>
        <div class='box-rows-1'>
          <p>2: <?php print_r($subjects2[1]); ?></p>
        </div>
        <div class='box-rows-1'>
          <p>3: <?php print_r($subjects2[2]); ?></p>
        </div>
        <div class='box-rows-1'>
          <p>4: <?php print_r($subjects2[3]); ?></p>
        </div>
        <div class='box-rows-1'>
          <p>5: <?php print_r($subjects2[4]); ?></p>
        </div>
        <div class='box-rows-1'>
          <p>6: <?php print_r($subjects2[5]); ?></p>
        </div>
        <div class='box-rows-1'>
          <p>7: <?php print_r($subjects2[6]); ?></p>
        </div>
    </div>
    </div>
  </div>
  </body>
</html>
