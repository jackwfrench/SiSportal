<?php
session_start();
require('functions.php');
require('dbc.php');
include('include.php');

checkUser();

$assesmentID = $_GET['assesmentID'];
$userID = $_SESSION['userID'];

$stmt = $pdo->query("SELECT assesment.assesmentID, assesment.classcode, assesment_name, c1, c2, c3, c1_mark, c2_mark, c3_mark, final_result, view_status, date_given, date_due from assesment_results inner join assesment on assesment.assesmentID=assesment_results.assesmentID where assesment.assesmentID=".$assesmentID." and userID=".$userID);

$row = $stmt->fetch();

if ($row['view_status'] == 'h') {
  header('Location: results.php');
}

//Timetable
 ?>
 <link rel='stylesheet' type='text/css' href='components/css/navbar.css'/>
 <link rel='stylesheet' type='text/css' href='components/css/viewresult.css'/>
 </head>
<body>
  <?php
  include("components/navbar.php");
  ?>
<h3 id='name'>Assesment Name: <?php echo ($row['assesment_name']); ?></h3>
<p id='info'> <strong> Class: </strong> <?php echo($row['classcode']); ?></p>
<p id='info'> <strong> Assesment ID: </strong> <?php echo($row['assesmentID']); ?></p>
<p id='info'> <strong> <?php echo($row['c1']); ?>: </strong> <?php echo($row['c1_mark']); ?></p>
<p id='info'> <strong> <?php echo($row['c2']); ?>: </strong> <?php echo($row['c2_mark']); ?></p>
<p id='info'> <strong> <?php echo($row['c3']); ?>: </strong> <?php echo($row['c3_mark']); ?></p>
<a id='url' target="_blank" href='user-file/assesment/<?php echo $row['assesmentID']?>.pdf'><button type="button" class="btn btn-primary">Assesment File</button></a>
</body>
