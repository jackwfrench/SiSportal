<?php
session_start();
require('dbc.php');
include('include.php');

?>
<link rel='stylesheet' type='text/css' href='components/css/navbar.css'/>
<link rel='stylesheet' type='text/css' href='css/students.css'/>
</head>
<body>
 <?php if($_SESSION['teacher_status'] == 1){
   include("components/teacher-navbar.php");
 }
 else {
   include("components/navbar.php");
 }
 ?>
<h3 id='title'> Student Information </h3>
<table id='table-main' class="table table-bordered">
<thead>
<tr>
  <th>Name</th>
  <th>UserName</th>
  <th>Grade</th>
</tr>
</thead>
<tbody>
<?php

$stmt = $pdo->query("SELECT * FROM users where teacher_status != 1");

while ($row = $stmt->fetch()) {

  echo ("<tr><th id='student-text'>".$row['lastname'].", ".$row['firstname']."</th><th id='student-text>".$row['username']."</th><th>".$row['grad_year']."</th></tr>");

}

?>
</tbody>

 </body>
