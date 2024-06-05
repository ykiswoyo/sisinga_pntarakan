<?php session_start(); if(empty($_SESSION['c_pimatasan'])){ header('location:../login'); }
else {header('location:main');} ?>