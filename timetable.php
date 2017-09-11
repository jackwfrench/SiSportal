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

 ?>
 <link rel='stylesheet' type='text/css' href='components/css/navbar.css'/>
 </head>
<body>
  <?php if($_SESSION['teacher_status'] == 1){
    include("components/teacher-navbar.php");
  }
  else {
    include("components/navbar.php");
  }

  ?>
  <div class='container'>
    <table class="table table-bordered">
    <thead>
      <tr>
        <th>Period</th>
        <th>Day 1</th>
        <th>Day 2</th>
        <th>Day 3</th>
        <th>Day 4</th>
        <th>Day 5</th>
        <th>Day 6</th>
        <th>Day 7</th>
        <th>Day 8</th>
        <th>Day 9</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>1</th>
        <th><?php echo $day1[0]; ?></th>
        <th><?php echo $day2[0]; ?></th>
        <th><?php echo $day3[0]; ?></th>
        <th><?php echo $day4[0]; ?></th>
        <th><?php echo $day5[0]; ?></th>
        <th><?php echo $day6[0]; ?></th>
        <th><?php echo $day7[0]; ?></th>
        <th><?php echo $day8[0]; ?></th>
        <th><?php echo $day9[0]; ?></th>
      </tr>
      <tr>
        <th>2</th>
        <th><?php echo $day1[1]; ?></th>
        <th><?php echo $day2[1]; ?></th>
        <th><?php echo $day3[1]; ?></th>
        <th><?php echo $day4[1]; ?></th>
        <th><?php echo $day5[1]; ?></th>
        <th><?php echo $day6[1]; ?></th>
        <th><?php echo $day7[1]; ?></th>
        <th><?php echo $day8[1]; ?></th>
        <th><?php echo $day9[1]; ?></th>
      </tr>
      <tr>
        <th>3</th>
        <th><?php echo $day1[2]; ?></th>
        <th><?php echo $day2[2]; ?></th>
        <th><?php echo $day3[2]; ?></th>
        <th><?php echo $day4[2]; ?></th>
        <th><?php echo $day5[2]; ?></th>
        <th><?php echo $day6[2]; ?></th>
        <th><?php echo $day7[2]; ?></th>
        <th><?php echo $day8[2]; ?></th>
        <th><?php echo $day9[2]; ?></th>
      </tr>
      <tr>
        <th>4</th>
        <th><?php echo $day1[3]; ?></th>
        <th><?php echo $day2[3]; ?></th>
        <th><?php echo $day3[3]; ?></th>
        <th><?php echo $day4[3]; ?></th>
        <th><?php echo $day5[3]; ?></th>
        <th><?php echo $day6[3]; ?></th>
        <th><?php echo $day7[3]; ?></th>
        <th><?php echo $day8[3]; ?></th>
        <th><?php echo $day9[3]; ?></th>
      </tr>
    </tbody>
  </table>
  </div>
</body>
