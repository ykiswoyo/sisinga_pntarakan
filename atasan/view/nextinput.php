<form action="<?php echo $basegu; ?>g-control/<?php echo md5('inputpel'); ?>/accesss" method="post">
<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
       <h3 class="box-title">INPUT DATA PELANGGARAN OLEH ATASAN LANGSUNG</h3>
      </div>
      <div class="box-body">
<?php
if(empty($_POST['pilih'])){ ?>
  <a href="<?php echo $basegu; ?>inputpelanggaran" class="btn btn-danger"><i class="glyphicon glyphicon-menu-left"></i> Anda Harus Memilih Nama</a>
<?php } else { ?>
        <table class="table table-bordered table-hover">
          <thead>
          <tr>
            <th width="1%"></th>
            <th>NIP</th>
            <th>NAMA</th>
            <th>JABATAN/BAGIAN</th>
          </tr>
          </thead>
          <tbody>
  <?php 
  $aparatur = $_POST['pilih'];$jumabsis = count($aparatur);
    for($ff=0;$ff<$jumabsis;$ff++){
      $akhsis=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM aparatur where c_aparatur='$aparatur[$ff]' "));
      $akhkel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM bagian where c_bagian='$akhsis[c_bagian]' "));
  ?>                
          <tr>
            <td><input checked="" type="checkbox" name="pilihsis[]" value="<?php echo $akhsis['c_aparatur']; ?>"></td>
            <td><?php echo $akhsis['nip']; ?></td>
            <td><?php echo $akhsis['nama']; ?></td>
            <td><?php echo $akhkel['bagian']; ?></td>
          </tr>
<?php } } ?>
          </tbody>
        </table>
			</div>
		</div>
	</div>
</div>

<div class="row">
  <div class="col-xs-12">
  <div class="box box-primary">
  <div class="box-header with-border">PILIH PERATURAN YANG DILANGGAR:
  </div>
    <div class="nav-tabs-custom">
      <ul class="nav nav-tabs">
<?php $smkkat=mysqli_query($con,"SELECT * FROM katbenpel order by katbenpel asc ");$vr=1;while($akhkat=mysqli_fetch_array($smkkat)){ ?>
        <li><a href="#<?php echo $akhkat['c_katbenpel']; ?>" data-toggle="tab"><?php echo $akhkat['katbenpel']; ?></a></li>
<?php } ?>
        <li><a href="#selesai" data-toggle="tab">SIMPAN</a></li>
      </ul>
      <div class="tab-content">
<?php $ngikat=mysqli_query($con,"SELECT * FROM katbenpel order by katbenpel asc "); while($ngi=mysqli_fetch_array($ngikat)){ ?>
        <div class="tab-pane" id="<?php echo $ngi['c_katbenpel']; ?>">
          <table class="table table-bordered table-hover">
          <thead>
          <tr>
            <th>BENTUK PELANGGARAN</th>
            <th>BOBOT</th>
            <th>OPSI</th>
          </tr>
          </thead>
          <tbody>
  <?php $smkben=mysqli_query($con,"SELECT * FROM benpel where c_katbenpel='$ngi[c_katbenpel]' order by bobot asc ");$vr=1;while($akhben=mysqli_fetch_array($smkben)){ ?>
          <tr>
            <td><?php echo $akhben['benpel']; ?></td>
            <td><?php echo $akhben['bobot']; ?></td>
            <td><label><input type="checkbox" name="pilihben[]" value="<?php echo $akhben['c_benpel']; ?>">&nbsp;Melanggar</label></td>
          </tr>
  <?php } ?>
          </tbody>
        </table>
        </div>
<?php } ?>
        <div class="tab-pane" id="selesai">
        <p>Pastikan Anda Telah Memilih Pelanggaran yang dilakukan Aparatur</p>
          <button class="btn btn-success">Selesaikan <i class="glyphicon glyphicon-ok"></i></button>
        </div>
      </div>
    </div>
  </div>
  </div>
</div>
</form>