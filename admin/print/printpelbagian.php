<?php
require '../../php/config.php'; require '../../php/function.php';
session_start();
if(empty($_SESSION['c_admin'])){header('location:'.$base.'');}
require_once("../../master/dompdf/dompdf_config.inc.php"); require 'cssprint.php';
$kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM bagian where c_bagian='$_GET[bagian]' "));
$content.='
<title>Pelanggaran Jabatan/Bagian ('.$kel['bagian'].')</title>
<div style="page-break-after: always;">
<h3 class="text-center">LAPORAN PENGAWASAN & PEMBINAAN ('.$kel['bagian'].')</h3>
<h3 class="text-center">Dari Jabatan/Bagian: ('.$kel['bagian'].')</h3>
<table class="table table-bordered">
    <tr class="text-center">
      <td width="1%">NO</td>
      <td>NAMA</td>
      <td width="35%">PELANGGARAN</td>
      <td width="1%">BOBOT</td>
      <td>ATASAN LANGSUNG</td>
      <td width="10%">TANGGAL</td>
    </tr>';
$smk=mysqli_query($con,"SELECT * FROM pelanggaran where c_bagian='$_GET[bagian]' order by at desc ");$vr=1;while($akh=mysqli_fetch_array($smk)){
$sis=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM aparatur where c_aparatur='$akh[c_aparatur]' "));
$gur=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM atasan where c_atasan='$akh[c_atasan]' "));
$ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$akh[c_benpel]' "));
$content.='
    <tr>
      <td class="text-center">'.$vr.'</td>
      <td>'.$sis['nama'].'<br>('.$kel['bagian'].')</td>
      <td>'.$ben['benpel'].'</td>
      <td class="text-center">'.$akh['bobot'].'</td>
      <td>'.$gur['nama'].'</td>
      <td>'.date("d/m/Y", strtotime($akh['at'])).'</td>
    </tr>';
$vr++; }
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
$dompdf->stream('Laporan Jabatan/Bagian bagian ('.$kel['bagian'].')',array("Attachment"=>0));
?>
