<?php
include("dbc.php");
session_start();
if($_SERVER["REQUEST_METHOD"] == "POST") {

  $username_input = $_POST['username'];
  $password_input = $_POST['password'];



  $stmt = $pdo->query("SELECT * from users where username='$username_input'");
  $row = $stmt->fetch();

  $_SESSION["username"] = $row['username'];
  $_SESSION["password"] = $row['password'];
  $_SESSION["userID"] = $row['userID'];
  $_SESSION["firstname"] = $row['firstname'];
  $_SESSION["lastname"] = $row['lastname'];
  $_SESSION["dob"] = $row['dob'];
  $_SESSION["grad_year"] = $row['grad_year'];
  $_SESSION["teacher_status"] = $row['teacher_status'];
  $_SESSION["admin_status"] = $row['admin_status'];

  if(isset($_SESSION['username'])) {
    if($password_input == $_SESSION['password']) {
      if($_SESSION["teacher_status"] == 1){
        header('Location: teacher-dashboard.php');
      }
      else {
        header("Location: student-dashboard.php");
      }
    }
    else {
      header("Location: login.php");
      session_destroy();
    }

  }

  else {
    header("Location: login.php");
    session_destroy();
  }
}
else {
  session_destroy();
  header('Location: login.php');
}

?>
