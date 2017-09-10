<?php
session_start();
require('functions.php');
require('dbc.php');
include('include.php');

checkUser();

//Timetable
 ?>
 <link rel='stylesheet' type='text/css' href='components/css/navbar.css'/>
 </head>
<body>
  <?php include("components/navbar.php");?>
  <table class="table table-bordered">
  <thead>
  <tr>
    <th>Class</th>
    <th>Assesment Name</th>
    <th>Date Given</th>
    <th>Date Due</th>
  </tr>
  </thead>
  <tbody>
    <?php
    $stmt = $pdo->query("SELECT classcode from student_subject where userID=".$_SESSION['userID']."");

    while ($row = $stmt->fetch()) {
      $stmt2 = $pdo->query("SELECT * from assesment where classcode=".'"'.$row[classcode].'"');

      while ($row2 = $stmt2->fetch()) {
        echo ("<tr><th>".$row2['classcode']."</th><th><a href='viewresult.php?assesmentID=".$row2['assesmentID']."'>".$row2['assesment_name']."</a></th><th>".$row2['date_given']."</th><th>".$row2['date_due']."</th></tr>");
      }
    }

    ?>
  </tbody>
  </table>
</body>
