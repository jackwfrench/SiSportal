<?php
function checkUser() {
  if (isset($_SESSION['username'])) {
    header('Location: login.php');
  }
  elseif ($_SESSION['teacher_status'] = 1) {
    header('Location: teacher-dashboard.php');
  }
}


?>
