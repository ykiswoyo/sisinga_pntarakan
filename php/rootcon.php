<?php
class con{
	function loginatasan($con,$username,$password){
		$sql=mysqli_fetch_array(mysqli_query($con,"SELECT * from atasan where username='$username' AND password='$password' "));
		if($sql!=NULL){
			session_start();$_SESSION['c_atasan']=$sql['c_atasan'];
			header('location:../atasan');
		}
		else{
			$_SESSION['pesan']="gagal";
			header('location:../login');
		}
	}
	function loginadmin($con,$username,$password){
		$sql=mysqli_fetch_array(mysqli_query($con,"SELECT * from admin where username='$username' AND password='$password' "));
		if($sql!=NULL){
			session_start();$_SESSION['c_admin']=$sql['c_admin'];
			header('location:../admin/');
		}
		else{
			$_SESSION['pesan']="gagal";
			header('location:../login');
		}
	}
	function loginpimatasan($con,$username,$password){
		$sql=mysqli_fetch_array(mysqli_query($con,"SELECT * from pimatasan where username='$username' AND password='$password' "));
		if($sql!=NULL){
			session_start();$_SESSION['c_pimatasan']=$sql['c_pimatasan'];
			header('location:../pimatasanlangsung/');
		}
		else{
			$_SESSION['pesan']="gagal";
			header('location:../login');
		}
	
	}
	function loginuser($con,$username,$password){
		$sql=mysqli_fetch_array(mysqli_query($con,"SELECT * from pelaksana where username='$username' AND password='$password' "));
		if($sql!=NULL){
			session_start();$_SESSION['c_pelaksana']=$sql['c_pelaksana'];
			header('location:../user/');
		}
		else{
			$_SESSION['pesan']="gagal";
			header('location:../login');
		}
	
	}
	function logout(){
		session_start();unset($_SESSION['c_admin']);unset($_SESSION['c_atasan']);unset($_SESSION['c_pimatasan']);unset($_SESSION['c_pelaksana']);unset($_SESSION['pesan']);session_destroy();header('location:../login');
	}
}
?>