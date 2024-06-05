<?php session_start(); if(empty($_SESSION['c_atasan'])){header('location:../login');}
echo $rep=str_replace(" ", "_", $_GET['search']);
header('location:search/'.$rep.'/_');
?>
