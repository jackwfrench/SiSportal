<?php
if (date( "w", $timestamp) == 0) {
  $subjectday = $day1;
}
if (date( "w", $timestamp) == 1) {
  $subjectday = $day2;
}
if (date( "w", $timestamp) == 2) {
  $subjectday = $day3;
}
if (date( "w", $timestamp) == 3) {
  $subjectday = $day4;
}
if (date( "w", $day5) == 4) {
  $subjectday = 5;
}
if (date( "w", $day5) == 5) {
  $subjectday = 6;
}
if (date( "w", $day6) == 6) {
  $subjectday = 7;
}

?>
