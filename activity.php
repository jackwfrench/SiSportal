<?php
require('dbc.php')
require('components/navbar.php');
require('functions.php');

$stmt = $pdo->query("SELECT * from notices order By through_date");

while($row = $stmt->fetch()) {

  echo ($row['activity'], $row['notice_comment']);

}
?>
