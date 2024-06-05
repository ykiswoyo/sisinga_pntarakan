<?php session_start(); if(empty($_SESSION['c_atasan'])){ header('location:../login'); }
else {header('location:main');} ?>