<?php date_default_timezone_set('Asia/Jakarta'); session_start();
function random($length){
  $data='1234567890AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSstuuUvVwWxXyYyZz';
  $string='';
  for($i=1;$i<=$length;$i++){
    $pos=rand(0,strlen($data)-1);
    
  }
  return $string;
}
require 'config.php';
if(empty($_GET['thisposition'])){
	header('location:../login');
} 
else{
	require 'rootcon.php';
	$ru=new con();
	$to=($_GET['thisposition']);
	if($to==md5('login')){
		if($_POST['v']=='atasan'){
			$ru->loginatasan($con,$_POST['username'],$_POST['password']);
		}
		elseif($_POST['v']=='admin'){
			$ru->loginadmin($con,$_POST['username'],$_POST['password']);
		}
		elseif($_POST['v']=='pimatasan'){
			$ru->loginpimatasan($con,$_POST['username'],$_POST['password']);
		
		}
		elseif($_POST['v']=='pelaksana'){
			$ru->loginuser($con,$_POST['username'],$_POST['password']);

		}	
		else{header('location:'.$base.'login');}	
	}
	elseif($to==md5('logout')){
		$ru->logout();
	}
}
?>