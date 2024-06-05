<?php date_default_timezone_set('Asia/Jakarta');
class action{
  function gantifotobelumada($con,$c_atasan,$foto){
  	$akh=mysqli_query($con,"UPDATE atasan SET foto='$foto' where c_atasan='$c_atasan' ");
  	header('location:../../'); 
  }
  function gantifotosudahada($con,$c_atasan,$foto){
  	$akh=mysqli_query($con,"UPDATE atasan SET foto='$foto' where c_atasan='$c_atasan' ");
  	header('location:../../');
  }
  function inputpel($con,$c_pelanggaran,$c_aparatur,$c_bagian,$c_benpel,$bobot,$c_atasan,$at){
  	$akh=mysqli_query($con,"INSERT INTO pelanggaran set c_pelanggaran='$c_pelanggaran',c_aparatur='$c_aparatur',c_bagian='$c_bagian',c_benpel='$c_benpel',bobot='$bobot',c_atasan='$c_atasan',at='$at' ");
  }
  function tambahchat($con,$c_atasan,$c_pimatasan){
    $akh=mysqli_query($con,"INSERT INTO relasichat set c_atasan='$c_atasan',c_pimatasan='$c_pimatasan' ");
    session_start();
    $_SESSION['pesan']='chat';
    header('location:../../pimatasanlangsung');
  }
  function kirimpesanatasan($con,$c_atasan,$c_pimatasan,$pesan,$at,$wg){
    $akh=mysqli_query($con,"INSERT INTO chat set c_atasan='$c_atasan',c_pimatasan='$c_pimatasan',pesan='$pesan',at='$at',w_g='$wg',sw='n' ");
    header('location:../../pesan/'.$c_pimatasan.'/_');
  }
  function hapuschat($con,$c_atasan,$c_pimatasan){
    $akh=mysqli_query($con,"DELETE FROM chat where c_atasan='$c_atasan' and c_pimatasan='$c_pimatasan' ");
    $akh2=mysqli_query($con,"DELETE FROM relasichat where c_atasan='$c_atasan' and c_pimatasan='$c_pimatasan' ");
      header('location:../../pesan');
  }
  function hapuspel($con,$c_pelanggaran){
    $akh=mysqli_query($con,"DELETE FROM pelanggaran where c_pelanggaran='$c_pelanggaran' ");
    session_start();
    $_SESSION['pesan']='hapus';
    header('location:../../history');
  }
}
?>
