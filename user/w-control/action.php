<?php date_default_timezone_set('Asia/Jakarta');
class action{
  function kirimpesanpimatasan($con,$c_atasan,$c_pimataan,$pesan,$at,$wg){
    $akh=mysqli_query($con,"INSERT INTO chat set c_atasan='$c_atasan',c_pimatasan='$c_pimatasan',pesan='$pesan',at='$at',w_g='$wg',sg='n' ");
    header('location:../../pesan/'.$c_atasan.'/_');
  }
  function tambahchat($con,$c_atasan,$c_pimatasan){
    $akh=mysqli_query($con,"INSERT INTO relasichat set c_atasan='$c_atasan',c_pimatasan='$c_pimatasan' ");
    session_start();
    $_SESSION['pesan']='chat';
    header('location:../../atasan');
  }
}
?>
