<?php date_default_timezone_set('Asia/Jakarta'); session_start();
function random($length){
  $data='1234567890AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSstuuUvVwWxXyYyZz';
  $string='';
  for($i=1;$i<=$length;$i++){
    $pos=rand(0,strlen($data)-1);
    
  }
  return $string;
}
require '../../php/config.php';
if(empty($_GET['smkakh']) or empty($_GET['q'])){
	header('location:../../login');
}
else{
	require 'action.php';
	$smk=new action();
	$akh=($_GET['smkakh']);
//kategori bentuk pelanggaran
  if($akh==md5('addjenispelanggaran')){ $c_katbenpel=random(9);
    $smk->addjenispelanggaran($con,$c_katbenpel,$_POST['katbenpel']);
  }
  else if($akh==md5('editjenispelanggaran')){
    $smk->editjenispelanggaran($con,$_POST['c_katbenpel'],$_POST['katbenpel']);
  }
  else if($akh==md5('hapuskatbenpel')){
    $smk->hapuskatbenpel($con,$_GET['q']);
  }
//bentuk pelanggaran
  else if($akh==md5('addbenpel')){ $c_benpel=random(9);
    $smk->addbenpel($con,$c_benpel,$_POST['c_katbenpel'],$_POST['benpel'],$_POST['bobot']);
  }
  else if($akh==md5('editbenpel')){
    $smk->editbenpel($con,$_POST['c_benpel'],$_POST['c_katbenpel'],$_POST['benpel'],$_POST['bobot']);
  }
  else if($akh==md5('editbenpel2')){
    $smk->editbenpel2($con,$_POST['c_benpel'],$_POST['c_katbenpel'],$_POST['benpel'],$_POST['bobot']);
  }
  else if($akh==md5('hapusbenpel')){
    $kben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$_GET[q]' "));
    $smk->hapusbenpel($con,$_GET['q'],$kben['c_katbenpel']);
  }
  else if($akh==md5('hapusbenpel2')){
    $smk->hapusbenpel2($con,$_GET['q']);
  }
//sanksi
  else if($akh==md5('addsanksi')){ $c_sanksi=random(9);
    $smk->addsanksi($con,$c_sanksi,$_POST['kriteria'],$_POST['dari'],$_POST['sampai'],$_POST['sanksi']);
  }
  else if($akh==md5('editsanksi')){
    $smk->editsanksi($con,$_POST['c_sanksi'],$_POST['kriteria'],$_POST['dari'],$_POST['sampai'],$_POST['sanksi']);
  }
  else if($akh==md5('hapussanksi')){
    $smk->hapussanksi($con,$_GET['q']);
  }
//bagian
  else if($akh==md5('addbagian')){ $c_bagian=random(9);
    $smk->addbagian($con,$c_bagian,$_POST['bagian']);
  }
  else if($akh==md5('editbagian')){
    $smk->editbagian($con,$_POST['c_bagian'],$_POST['bagian']);
  }
  else if($akh==md5('hapusbagian')){
    $smk->hapusbagian($con,$_GET['q']);
  }
//aparatur
  else if($akh==md5('addaparatur')){ $c_aparatur=random(9); $tl=date('Y-m-d',strtotime($_POST['tl']));
    $smk->addaparatur($con,$c_aparatur,$_POST['c_bagian'],$_POST['nip'],$_POST['nama'],$_POST['jk'],$_POST['alamat'],$tl);
  }
  else if($akh==md5('editaparatur')){ $tl=date('Y-m-d',strtotime($_POST['tl']));
    $smk->editaparatur($con,$_POST['c_aparatur'],$_POST['nip'],$_POST['nama'],$_POST['jk'],$_POST['alamat'],$tl);
  }
  else if($akh==md5('hapusaparatur')){
    $ck=mysqli_fetch_array(mysqli_query($con,"SELECT * from aparatur where c_aparatur='$_GET[q]' "));
    $smk->hapusaparatur($con,$_GET['q'],$ck['c_bagian']);
  }
  else if($akh==md5('hapusaparatur2')){
    $smk->hapusaparatur2($con,$_GET['q']);
  }
//atasan
  else if($akh==md5('addatasan')){ $c_atasan=random(9);
    $smk->addatasan($con,$c_atasan,$_POST['nama'],$_POST['inisial'],$_POST['username'],$_POST['password']);
  }
  else if($akh==md5('editatasan')){
    $smk->editatasan($con,$_POST['c_atasan'],$_POST['nama'],$_POST['inisial'],$_POST['username'],$_POST['password']);
  }
  else if($akh==md5('hapusatasan')){
    $dd=mysqli_fetch_array(mysqli_query($con,"SELECT * from atasan where c_atasan='$_GET[q]' "));
    if($dd['foto']!=NULL){
        unlink('../../atasan/'.$dd['foto'].'');
    }
    $smk->hapusatasan($con,$_GET['q']);
  }
//pimatasan
  else if($akh==md5('pimatasan')){
    $cor=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM pimatasan where c_aparatur='$_POST[c_aparatur]' "));
    if($cor==NULL){ $c_pimatasan=random(9);
      $smk->inputpimatasan($con,$c_pimatasan,$_POST['c_aparatur'],$_POST['nama'],$_POST['username'],$_POST['password']);
    }
    else{
      $smk->editpimatasan($con,$cor['c_pimatasan'],$_POST['c_aparatur'],$_POST['nama'],$_POST['username'],$_POST['password']);
    }
  }
  else if($akh==md5('hapuspimatasan')){
    $smk->hapuspimatasan($con,$_GET['q']);
  }

//pelaksana
else if($akh==md5('pelaksana')){
  $cor=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM pelaksana where c_aparatur='$_POST[c_aparatur]' "));
  if($cor==NULL){ $c_pelaksana=random(9);
    $smk->inputpelaksana($con,$c_pelaksana,$_POST['c_aparatur'],$_POST['nama'],$_POST['username'],$_POST['password']);
  }
  else{
    $smk->editpelaksana($con,$cor['c_pelaksana'],$_POST['c_aparatur'],$_POST['nama'],$_POST['username'],$_POST['password']);
  }
}
else if($akh==md5('hapuspelaksana')){
  $smk->hapuspelaksana($con,$_GET['q']);
}

//pelanggaran
  else if($akh==md5('hapuspel')){
    $smk->hapuspel($con,$_GET['q']);
  }
  else if($akh==md5('hapuspelaparatur')){
    $smk->hapuspelaparatur($con,$_GET['q']);
  }
  else if($akh==md5('testtoken')){
    echo $_GET['q'].'<br>';
    echo $t2=md5(date('H:i:s'));
  }
  else{
    //header('location:../../login');
    echo "string";
  }
}
?>
