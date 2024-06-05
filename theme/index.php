<?php session_start(); 
if(isset($_SESSION['c_admin'])){ header('location:admin/'); }
elseif(isset($_SESSION['c_atasan'])){ header('location:atasan/'); }
elseif(isset($_SESSION['c_pimatasan'])){ header('location:pimatasanlangsung/'); }
elseif(isset($_SESSION['c_pelaksana'])){ header('location:user/'); }


else{header('location:login');} ?>