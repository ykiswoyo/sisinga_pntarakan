<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
       <h3 class="box-title">Cari Nama pada Jabatan/Bagian:</h3>
       	<div class="pull-right box-tools">
         	<button class="btn btn-default btn-xs" data-widget="collapse" data-toggle="tooltip" title="Sembunyikan/Tampilkan">
          <i class="glyphicon glyphicon-minus"></i></button>
       	</div>
      </div>
      <div class="box-body">
      <form action="<?php echo $basegu; ?>keinputpelanggaran" method="post">
      	<div class="row">
      		<div class="col-md-4 col-xs-12">
      			<div class="form-group">
              <select name="c_bagian" class="form-control select2" required="">
            		<option disabled="" selected="">Pilih Jabatan/Bagian</option>
	            <?php $opkel=mysqli_query($con,"SELECT * FROM bagian order by bagian asc ");while($dopkel=mysqli_fetch_array($opkel)){ ?>
	              <option value="<?php echo $dopkel['c_bagian']; ?>"><?php echo $dopkel['bagian']; ?></option>
	            <?php } ?>
            	</select>
            </div>
      		</div>

          
      		<div class="col-md-4 col-xs-12">
      			<div class="form-group">
            	<button class="btn btn-success"><i class="glyphicon glyphicon-search"></i> Mencari...</button>
            </div>
      		</div>
      	</div>
      </form>
      </div>
    </div>
  </div>
</div>
<?php if(isset($_GET['q']) and isset($_GET['s'])){
	$kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM bagian where c_bagian='$_GET[q]' ")); $s=str_replace("_", " ", $_GET['s']); $k=str_replace("_", " ", $_GET['q']); 
?>


<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
       Hasil Pencarian:... <b><?php echo $kel['bagian']; ?>
      </div>
      <form action="<?php echo $basegu; ?>nextinput" method="post">
      <div class="box-body">
       	<table class="table table-bordered table-hover">
         	<thead>
          <tr>
            <th>NAMA</th>
            <th>OPSI</th>
          </tr>
          </thead>
          <tbody>
<?php $smk=mysqli_query($con,"SELECT * FROM aparatur where c_bagian='$k' and (nip like '%$s%' or nama like '%$s%') order by nama asc ");$vr=1;$jumakh=mysqli_num_rows($smk);      
      
      if($jumakh>NULL){
        while($akh=mysqli_fetch_array($smk)){ ?>                
          <tr>
            <td><?php echo $akh['nama']; ?></td>
            <td><label><input type="checkbox" name="pilih[]" value="<?php echo $akh['c_aparatur']; ?>">&nbsp;Pilih Nama</label></td>
          </tr>
        <?php $vr++; }
      }else{
        echo '<tr><td colspan="3">Tidak Ada Data</td</tr>';
      }?> 
          </tbody>
       </table>
    	</div>
<?php if($jumakh>NULL){ ?>
      <div class="box-footer">
        <button class="btn btn-primary">Selanjutnya <i class="glyphicon glyphicon-menu-right"></i></button>
      </div>
<?php } ?>
      </form>
    </div>
  </div>
</div>
<?php } ?>
<?php if($_SESSION['pesan']!=NULL){ $_SESSION['pesan']=''; ?>
<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
       
      </div>
      <div class="box-body">
       SELESAI MENGINPUTKAN PELANGGARAN 
      </div>
    </div>
  </div>
</div>
<?php } ?>