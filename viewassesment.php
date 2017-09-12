<?php
session_start();
require('dbc.php');
include('include.php');

?>
<link rel='stylesheet' type='text/css' href='components/css/navbar.css'/>
<link rel='stylesheet' type='text/css' href='css/assesment.css'/>
</head>
<body>
 <?php if($_SESSION['teacher_status'] == 1){
   include("components/teacher-navbar.php");
 }
 else {
   include("components/navbar.php");
 }

$assesmentID = $_GET['assesmentID'];

$stmt = $pdo->query("SELECT * FROM assesment where assesmentID=".$assesmentID);

$row = $stmt->fetch();

$stmt2 = $pdo->query("SELECT * FROM student_subject inner join users on users.userID=student_subject.userID where classcode ='".$row['classcode']."'");

?>
<h3 id='title'> Assesment Item <?php echo ($row['assesmentID']); ?> </h3>
<p id='student-text-info'><strong>Class: </strong><?php echo ($row['classcode']); ?></p>
<p id='student-text-info'><strong>Date Given: </strong><?php echo ($row['date_given']); ?></p>
<p id='student-text-info'><strong>Date Due: </strong><?php echo ($row['date_due']); ?></p>

<h3 id='title'> Students </h3>
<table id='table-main' class="table table-bordered">
<thead>
<tr>
  <th>Student Name</th>
</tr>
</thead>
<tbody>
  <?php
  while ($row2 = $stmt2->fetch()){
    echo ("<tr><th id='name-text'><a href='viewstudent-assesment.php?userID=".$row2['userID']."&assesmentID=".$row['assesmentID']."'>".$row2['lastname'].", ".$row2['firstname']."</a></th></tr>");
  }
  ?>
</tbody>
</table>
</body>
