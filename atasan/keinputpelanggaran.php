<?php session_start(); if(empty($_SESSION['c_atasan'])){header('location:../login');}
if(isset($_POST['c_bagian']) and $_POST['namanip']==''){
	$k=$_POST['c_bagian'];$g='_';
}
else if(empty($_POST['c_bagian']) and $_POST['namanip']!=''){
	$k='_';$g=str_replace(" ", "_", $_POST['namanip']);
}
else if(isset($_POST['c_bagian']) and isset($_POST['namanip'])){
	$k=$_POST['c_bagian'];$g=str_replace(" ", "_", $_POST['namanip']);
}
else{
	$k='_';$g='_';
}
header('location:inputpelanggaran/'.$k.'/'.$g.'');
?>