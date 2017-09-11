<?php
session_start();
require('dbc.php');

$event_name = $_POST["eventname"];
$description = $_POST["description"];
$date_through = $_POST["date_through"];
$userID = $_SESSION['userID'];


$stmt = $pdo->prepare("INSERT INTO notices (userID, activity, notice_comment, through_date) VALUES (?, ?, ?, ?)");

$stmt->execute([$userID, $event_name, $description, $date_through]);

header('Location: notices.php');


?>
