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
?>
 <h3 id='title'> Assesment </h3>
 <table id='table-main' class="table table-bordered">
 <thead>
 <tr>
   <th>Assesment ID </th>
   <th>Class</th>
   <th>Assesment Name</th>
 </tr>
 </thead>
 <tbody>
 <?php

 $stmt = $pdo->query("SELECT * FROM assesment");

 while ($row = $stmt->fetch()) {

   echo ("<tr id='assesment-text'><th id='assesment-text'>".$row['assesmentID']."</th><th id='assesment-text'>".$row['classcode']."</th><th id='assesment-text'><a href='viewassesment.php?assesmentID=".$row['assesmentID']."'>".$row['assesment_name']."</a></th></tr>");

 }

 ?>
