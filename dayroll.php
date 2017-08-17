<?php
if (date( "w", $timestamp) == 0) {
  $subjectday = 1;
}
if (date( "w", $timestamp) == 1) {
  $subjectday = 2;
}
if (date( "w", $timestamp) == 2) {
  $subjectday = 3;
}
if (date( "w", $timestamp) == 3) {
  $subjectday = 4;
}
if (date( "w", $timestamp) == 4) {
  $subjectday = 5;
}
if (date( "w", $timestamp) == 5) {
  $subjectday = 6;
}
if (date( "w", $timestamp) == 6) {
  $subjectday = 7;
}

?>
