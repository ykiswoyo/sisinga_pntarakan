<?php
require '../../php/config.php'; require '../../php/function.php';
session_start();
if(empty($_SESSION['c_atasan'])){header('location:'.$base.'');}
require_once("../../master/dompdf/dompdf_config.inc.php"); require 'cssprint.php';
$gur=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM atasan where c_atasan='$_GET[atasan]' "));
$content.='
<title>LAPORAN PENGAWASAN & PEMBINAAN, dibuat oleh:... ('.$gur['nama'].')</title>
<div style="page-break-after: always;">
<h3 class="text-center">LAPORAN PENGAWASAN & PEMBINAAN</h3>
<h3 class="text-center">Atasan Langsung ('.$gur['nama'].')</h3>
<table class="table table-bordered">
    <tr class="text-center">
      <td width="1%">NO</td>
      <td>NAMA</td>
      <td width="40%">BENTUK PELANGGARAN</td>
      <td width="1%">BOBOT</td>
      <td width="10%">TANGGAL</td>
    </tr>';
$smk=mysqli_query($con,"SELECT * FROM pelanggaran where c_atasan='$_GET[atasan]' order by at desc ");
foreach($smk as $kumpul){ $c_sis[]=$kumpul['c_aparatur']; }
$ar=0; $vr=1; $jar= count($c_sis);
foreach($smk as $akh){
$sis=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM aparatur where c_aparatur='$akh[c_aparatur]' "));
$kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM bagian where c_bagian='$akh[c_bagian]' "));
$ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$akh[c_benpel]' "));
$content.='
    <tr>';
      if($ar==0){
        $content.= '<td class="text-center">'.$vr.'</td><td>'.$sis['nama'].' ('.$kel['bagian'].')</td>';
      }else{
        $ar2= $ar-1;
        if($c_sis[$ar]==$c_sis[$ar2]){
          $content.= '<td></td><td></td>';
        }
        else{
          $vr2= $vr+1;
          $content.= '<td class="text-center">'.$vr2.'</td><td>'.$sis['nama'].' ('.$kel['bagian'].')</td>';
          $vr++;
        }
      }  
      $content.='
      <td>'.$ben['benpel'].'</td>
      <td class="text-center">'.$akh['bobot'].'</td>
      <td>'.date("d/m/Y", strtotime($akh['at'])).'</td>
    </tr>';
$ar++; }
$content.='
</table>
<div style="position: absolute;bottom: 0;right: 0;">
	Dicetak Pada '.date('d-m-Y H:i').'
</div>
</div>';
$dompdf = new DOMPDF();
$dompdf->set_paper('A4','Landscape');
$dompdf->load_html($content);
$dompdf->render();
$dompdf->stream('Laporan Atasan Langsung ('.$gur['nama'].').pdf',array("Attachment"=>0));
?>
