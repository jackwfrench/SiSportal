<?php
session_start();
require('dbc.php');
include('include.php');

$userID = $_GET['userID'];
$assesmentID = $_GET['assesmentID'];

$stmt = $pdo->query("SELECT * FROM assesment_results where assesmentID=".$assesmentID." AND userID=".$userID);

$stmt2 = $pdo->query("SELECT * FROM users where userID=".$userID);

$row = $stmt->fetch();

$row2 = $stmt2->fetch();
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
 ?>

<h3 id='title'> Assesment Item <?php echo($assesmentID)?></h3>
<p id='student-text-info'><strong>Name: </strong><?php echo($row2['firstname']." ".$row2['lastname']); ?></p>
<p id='student-text-info'><strong><?php echo ($row['c1']."</strong>: <input name='c1' value='".$row['c1_mark']."'>");?></p>
<p id='student-text-info'><strong><?php echo ($row['c2']."</strong>: <input name='c2' value='".$row['c2_mark']."'>");?></p>
<p id='student-text-info'><strong><?php echo ($row['c3']."</strong>: <input name='c3' value='".$row['c3_mark']."'>");?></p>
<p id='student-text-info'><strong>Final Result: </strong><?php echo("<input name='' value='".$row['final_result']."'>");?></p>
<p id='student-text-info'><strong>View Status: </label><input type='checkbox' name='public'></input></p>

</body>
