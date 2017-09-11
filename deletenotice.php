<?php
session_start();
require('dbc.php');

$noticeID = $_GET['noticeID'];

$stmt = $pdo->prepare("DELETE FROM notices WHERE noticeID =".$noticeID);

$stmt->execute();

header("Location: notices.php");



?>
