<?php if(isset($_GET['q'])){ $s=str_replace("_", " ", $_GET['q']); }else{$s='@';}
$sea=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM aparatur where nip='$s' or nama like'%$s%' ")); $bagian=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM bagian where c_bagian='$sea[c_bagian]' ")); $pel=mysqli_num_rows(mysqli_query($con,"SELECT * FROM pelanggaran where c_aparatur='$sea[c_aparatur]' ")); $totalpel=mysqli_fetch_array(mysqli_query($con,"SELECT sum(bobot) as total FROM pelanggaran where c_aparatur='$sea[c_aparatur]' ")); $user=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM pimatasan where c_aparatur='$sea[c_aparatur]' ")); $user=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM pelaksana where c_aparatur='$sea[c_aparatur]' "));?>
<div class="judul">Hasil Pencarian dari <?php echo $s.' '; if($sea==NULL){echo 'Tidak Ada Data';} ?> </div>
<?php if($sea!=NULL and isset($_GET['q'])){ ?>
<div class="row">
  <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
    <div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
      <div class="widget-user-header bg-green">
        <div class="widget-user-image">
          <img class="img-circle" src="<?php echo $base; ?>php/img/aparatur.png" alt="User aparatur ">
        </div>
              <!-- /.widget-user-image -->
        <h4 class="widget-user-username" style="font-size: 20px;"><?php echo $sea['nama']; ?></h4>
        <h5 class="widget-user-desc"><?php echo $bagian['bagian']; ?></h5>
        <h5 class="widget-user-desc"><?php echo $sea['alamat'].', '.tgl($sea['tl']); ?></h5>
        <h5 class="widget-user-desc"><?php if($sea['jk']=='L'){echo 'Laki - Laki';}elseif($sea['jk']=='P'){echo 'Perempuan';} ?></h5>
      </div>
      <div class="box-footer no-padding">
        <ul class="nav nav-stacked">
          <li><a>Total Pelanggaran <span style="font-size: 20px;margin-top:-3px;color: #428bca;" class="pull-right"><?php echo $pel; ?></span></a><li>
          <li><a>Poin Pelanggaran <span style="font-size: 20px;margin-top:-3px;color: #d9534f;" class="pull-right"><?php if($totalpel['total']>0){echo $totalpel['total'];}else{echo "0";} ?></span></a></li>
          <li><a>Pimpinan Atasan Langsung <span class="pull-right"><?php if($user['nama']==NULL){echo '-';}else{ echo $user['nama'];} ?></span></a><li>
          
          <li><a>User <span class="pull-right"><?php if($user['nama']==NULL){echo '-';}else{ echo $user['nama'];} ?></span></a><li>
         
        </ul>
      </div>
    </div>
          <!-- /.widget-user -->
  </div>
  <div class="col-xs-12 col-md-8 col-lg-8">
    <div class="box box-info">
      <div class="box-header with-border">
        <h3 class="box-title">&nbsp;Pelanggaran <?php echo $sea['nama'] ?></h3>
      </div>
      <div class="box-body">
        <table id="example3" class="table table-hover">
          <thead>
            <tr><b>
              <td>NO</td>
              <td>PELANGGARAN</td>
              <td>B</td>
              <td>ATASAN LANGSUNG</td>
              </b><td>TANGGAL PELANGGARAN</td>
            </tr>
          </thead>
          <tbody>
<?php $smk=mysqli_query($con,"SELECT * FROM pelanggaran where c_aparatur='$sea[c_aparatur]' order by at desc ");$vr=1;while($akh=mysqli_fetch_array($smk)){
$gur=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM atasan where c_atasan='$akh[c_atasan]' "));
$ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$akh[c_benpel]' "));
?>                
            <tr>
              <td><?php echo $vr; ?></td>
              <td><?php echo $ben['benpel']; ?></td>
              <td><?php echo $ben['bobot']; ?></td>
              <td><?php echo $gur['nama']; ?></td>
              <td><?php echo date("d/m/Y", strtotime($akh['at'])); ?></td>
            </tr>
<?php $vr++; } ?>
          </tbody>
        </table>
      </div>
            <!-- /.box-body -->
  </dsiv>
</div>
</div>
<?php } ?>
