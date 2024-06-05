<?php date_default_timezone_set('Asia/Jakarta');
class action{

  function gantifotobelumada($con,$c_admin,$foto){
  	$akh=mysqli_query($con,"UPDATE admin SET foto='$foto' where c_admin='$c_admin' ");
  	header('location:../../'); 
  }
  function gantifotosudahada($con,$c_admin,$foto){
  	$akh=mysqli_query($con,"UPDATE admin SET foto='$foto' where c_admin='$c_admin' ");
  	header('location:../../');
  }
//kategori bentuk pelanggaran
  function addjenispelanggaran($con,$c_katbenpel,$katbenpel){
    $akh=mysqli_query($con,"INSERT into katbenpel set c_katbenpel='$c_katbenpel',katbenpel='$katbenpel' ");
    session_start();
    $_SESSION['pesan']='tambah'; 
    clearstatcache();
    header('location:../../kategoripelanggaran');
  }
  function editjenispelanggaran($con,$c_katbenpel,$katbenpel){
    $akh=mysqli_query($con,"UPDATE katbenpel set katbenpel='$katbenpel' where c_katbenpel='$c_katbenpel' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../kategoripelanggaran'); 
  }
  function hapuskatbenpel($con,$c_katbenpel){
    $ben=mysqli_query($con,"SELECT * FROM benpel where c_katbenpel='$c_katbenpel' ");while($hpel=mysqli_fetch_array($ben)){
      $akh=mysqli_query($con,"DELETE from pelanggaran where c_benpel='$hpel[c_benpel]' ");
    } 
    $akh2=mysqli_query($con,"DELETE from benpel where c_katbenpel='$c_katbenpel' ");
    $akh3=mysqli_query($con,"DELETE from katbenpel where c_katbenpel='$c_katbenpel' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../kategoripelanggaran');
  }
//bentuk pelanggaran
  function addbenpel($con,$c_benpel,$c_katbenpel,$benpel,$bobot){
    $akh=mysqli_query($con,"INSERT INTO benpel set c_benpel='$c_benpel',c_katbenpel='$c_katbenpel',benpel='$benpel',bobot='$bobot' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../addbentukpelanggaran/'.$c_katbenpel.'');
  }
  function editbenpel($con,$c_benpel,$c_katbenpel,$benpel,$bobot){
    $akh=mysqli_query($con,"UPDATE benpel set benpel='$benpel',bobot='$bobot' where c_benpel='$c_benpel' ");
    $akh2=mysqli_query($con,"UPDATE pelanggaran set bobot='$bobot' where c_benpel='$c_benpel' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../bentukpelanggaran/'.$c_katbenpel.'');
  }
  function editbenpel2($con,$c_benpel,$c_katbenpel,$benpel,$bobot){
    $akh=mysqli_query($con,"UPDATE benpel set benpel='$benpel',bobot='$bobot' where c_benpel='$c_benpel' ");
    $akh2=mysqli_query($con,"UPDATE pelanggaran set bobot='$bobot' where c_benpel='$c_benpel' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../bentukpelanggaran');
  }
  function hapusbenpel($con,$c_benpel,$c_katbenpel){
    $akh=mysqli_query($con,"DELETE from benpel where c_benpel='$c_benpel' ");
    $akh2=mysqli_query($con,"DELETE from pelanggaran where c_benpel='$c_benpel' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../bentukpelanggaran/'.$c_katbenpel.'');
  }
  function hapusbenpel2($con,$c_benpel){
    $akh=mysqli_query($con,"DELETE from benpel where c_benpel='$c_benpel' ");
    $akh2=mysqli_query($con,"DELETE from pelanggaran where c_benpel='$c_benpel' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../bentukpelanggaran');
  }
//sanksi
  function addsanksi($con,$c_sanksi,$kriteria,$dari,$sampai,$sanksi){
    $akh=mysqli_query($con,"INSERT INTO sanksi set c_sanksi='$c_sanksi',kriteria='$kriteria',bobot_dari='$dari',bobot_sampai='$sampai',sanksi='$sanksi' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../addsanksi');
  }
   function editsanksi($con,$c_sanksi,$kriteria,$dari,$sampai,$sanksi){
    $akh=mysqli_query($con,"UPDATE sanksi set kriteria='$kriteria',bobot_dari='$dari',bobot_sampai='$sampai',sanksi='$sanksi' where c_sanksi='$c_sanksi' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../sanksipelanggaran');
  }
  function hapussanksi($con,$c_sanksi){
    $akh=mysqli_query($con,"DELETE FROM sanksi where c_sanksi='$c_sanksi' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../sanksipelanggaran');
  }
//bagian
  function addbagian($con,$c_bagian,$bagian){
    $akh=mysqli_query($con,"INSERT INTO bagian set c_bagian='$c_bagian',bagian='$bagian' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../bagian');
  }
  function editbagian($con,$c_bagian,$bagian){
    $akh=mysqli_query($con,"UPDATE bagian set bagian='$bagian' where c_bagian='$c_bagian' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../bagian');
  }
  function hapusbagian($con,$c_bagian){
    $losis=mysqli_query($con,"SELECT * FROM aparatur where c_bagian='$c_bagian' ");while($load=mysqli_fetch_array($losis)){
      $akh=mysqli_query($con,"DELETE FROM pimatasan where c_aparatur='$load[c_aparatur]' ");
      $akh2=mysqli_query($con,"DELETE FROM pelanggaran where c_aparatur='$load[c_aparatur]' ");
      $akh3=mysqli_query($con,"DELETE FROM aparatur where c_aparatur='$load[c_aparatur]' ");
    }
    $akh4=mysqli_query($con,"DELETE FROM bagian where c_bagian='$c_bagian' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../bagian');
  }
//aparatur
  function addaparatur($con,$c_aparatur,$c_bagian,$nip,$nama,$jk,$alamat,$tl){
    $akh=mysqli_query($con,"INSERT INTO aparatur set c_aparatur='$c_aparatur',c_bagian='$c_bagian',nip='$nip',nama='$nama',jk='$jk',alamat='$alamat',tl='$tl' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../addaparatur/'.$c_bagian.'');
  }
  function editaparatur($con,$c_aparatur,$nip,$nama,$jk,$alamat,$tl){
    $akh=mysqli_query($con,"UPDATE aparatur set nip='$nip',nama='$nama',jk='$jk',alamat='$alamat',tl='$tl' where c_aparatur='$c_aparatur' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../editaparatur/'.$c_aparatur.'');
  }
  function hapusaparatur($con,$c_aparatur,$c_bagian){
    $akh=mysqli_query($con,"DELETE from pelanggaran where c_aparatur='$c_aparatur' ");
    $akh2=mysqli_query($con,"DELETE from pimatasan where c_aparatur='$c_aparatur' ");
    $akh3=mysqli_query($con,"DELETE from aparatur where c_aparatur='$c_aparatur' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../aparatur/'.$c_bagian.'');
  }
  function hapusaparatur2($con,$c_aparatur){
    $akh=mysqli_query($con,"DELETE from pelanggaran where c_aparatur='$c_aparatur' ");
    $akh2=mysqli_query($con,"DELETE from pimatasan where c_aparatur='$c_aparatur' ");
    $akh3=mysqli_query($con,"DELETE from aparatur where c_aparatur='$c_aparatur' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../aparatur');
  }
//atasan
  function addatasan($con,$c_atasan,$nama,$inisial,$username,$password){
    $akh=mysqli_query($con,"INSERT INTO atasan set c_atasan='$c_atasan',nama='$nama',inisial='$inisial',username='$username',password='$password' ");
    session_start();
    $_SESSION['pesan']='tambah';
    header('location:../../addatasan');
  }
  function editatasan($con,$c_atasan,$nama,$inisial,$username,$password){
    $akh=mysqli_query($con,"UPDATE atasan set nama='$nama',inisial='$inisial',username='$username',password='$password' where c_atasan='$c_atasan' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../editatasan/'.$c_atasan.'');
  }
  function hapusatasan($con,$c_atasan){
    $akh=mysqli_query($con,"DELETE from pelanggaran where c_atasan='$c_atasan' ");
    $akh2=mysqli_query($con,"DELETE FROM chat where c_atasan='$c_atasan' ");
    $akh3=mysqli_query($con,"DELETE FROM relasichat where c_atasan='$c_atasan' ");
    $akh4=mysqli_query($con,"DELETE from atasan where c_atasan='$c_atasan' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../atasan');
  }
//pimatasan
  function inputpimatasan($con,$c_pimatasan,$c_aparatur,$nama,$username,$password){
    $akh=mysqli_query($con,"INSERT INTO pimatasan set c_pimatasan='$c_pimatasan',c_aparatur='$c_aparatur',nama='$nama',username='$username',password='$password' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../pimatasan/'.$c_aparatur.'');
  }
  function editpimatasan($con,$c_pimatasan,$c_aparatur,$nama,$username,$password){
    $akh=mysqli_query($con,"UPDATE pimatasan set c_aparatur='$c_aparatur',nama='$nama',username='$username',password='$password' where c_pimatasan='$c_pimatasan' ");
    session_start();
    $_SESSION['pesan']='edit';
    header('location:../../pimatasan/'.$c_aparatur.'');
  }
  function hapuspimatasan($con,$c_pimatasan){
    $akh=mysqli_query($con,"DELETE FROM pimatasan where c_pimatasan='$c_pimatasan' ");
    $akh2=mysqli_query($con,"DELETE FROM chat where c_pimatasan='$c_pimatasan' ");
    $akh3=mysqli_query($con,"DELETE FROM relasichat where c_pimatasan='$c_pimatasan' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../pimatasanlangsung');
  }

//pelaksana
function inputpelaksana($con,$c_pelaksana,$c_aparatur,$nama,$username,$password){
  $akh=mysqli_query($con,"INSERT INTO pelaksana set c_pelaksana='$c_pelaksana',c_aparatur='$c_aparatur',nama='$nama',username='$username',password='$password' ");
  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../pelaksana/'.$c_aparatur.'');
}
function editpelaksana($con,$c_pelaksana,$c_aparatur,$nama,$username,$password){
  $akh=mysqli_query($con,"UPDATE pelaksana set c_aparatur='$c_aparatur',nama='$nama',username='$username',password='$password' where c_pelaksana='$c_pelaksana' ");
  session_start();
  $_SESSION['pesan']='edit';
  header('location:../../pelaksana/'.$c_aparatur.'');
}
function hapuspelaksana($con,$c_pelaksana){
  $akh=mysqli_query($con,"DELETE FROM pelaksana where c_pelaksana='$c_pelaksana' ");
  $akh2=mysqli_query($con,"DELETE FROM chat where c_pelaksana='$c_pelaksana' ");
  $akh3=mysqli_query($con,"DELETE FROM relasichat where c_pelaksana='$c_pelaksana' ");
  session_start();
  $_SESSION['pesan']='hapus';
  header('location:../../user');
}


//pelanggaran
  function hapuspel($con,$c_pelanggaran){
    $akh=mysqli_query($con,"DELETE FROM pelanggaran where c_pelanggaran='$c_pelanggaran' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../pelanggaranaparatur');
  }
  function hapuspelaparatur($con,$c_pelanggaran){
    $akh=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM pelanggaran where c_pelanggaran='$c_pelanggaran' "));
    $akh2=mysqli_query($con,"DELETE FROM pelanggaran where c_pelanggaran='$c_pelanggaran' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../../lihatpelanggaranaparatur/'.$akh['c_aparatur'].'');
  }
  
}
?>
