<?php session_start(); if(empty($_SESSION['c_pelaksana'])){ header('location:../login'); }
else {header('location:main');} ?>