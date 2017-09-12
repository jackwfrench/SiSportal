<?php
session_start();
require('dbc.php');
include('include.php');


$userID = $_GET['userID'];

$stmt = $pdo->query("SELECT * FROM users where userID=".$userID);

$row = $stmt->fetch()

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

<h3 id='title'> Student Report </h3>
<img id='profile-image' src='user-image/profile-pic.png'/>
<p id='student-text-info'><strong>Name: </strong><?php echo ($row['lastname'].", ".$row['firstname']); ?></p>
<p id='student-text-info'><strong>User Name: </strong><?php echo ($row['username']); ?></p>
<p id='student-text-info'><strong>Date of Birth: </strong><?php echo ($row['dob']); ?></p>
<p id='student-text-info'><strong>Graduation Year: </strong><?php echo ($row['grad_year']); ?></p>
<p id='student-text-info'><strong>House: </strong><?php echo ($row['house']); ?></p>
<p id='student-text-info'><strong>House Group: </strong><?php echo ($row['house_group']); ?></p>
<p id='student-text-info'><strong>Email: </strong><?php echo ($row['email']); ?></p>
 </body>
