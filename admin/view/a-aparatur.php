<?php 
if(isset($_GET['q'])){
  $posbagian=mysqli_query($con,"SELECT * FROM bagian where c_bagian='$_GET[q]' ");$dbagian=mysqli_fetch_array($posbagian); 
}
?>
      <div class="row">
        <div class="col-xs-12 col-md-12 col-lg-12">
        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='edit'){?>
          <div style="display: none;" class="alert alert-success alert-dismissable">Aparatur Berhasil Diedit
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>
        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='hapus'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable">Aparatur Berhasil Dihapus
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>
        <?php $_SESSION['pesan'] = '';?>
          <div class="box box-info">
            <div class="box-header with-border">
            <?php if(isset($_GET['q'])){ ?>
              <h3 class="box-title"></span>&nbsp;Jabatan/Bagian = <?php echo $dbagian['bagian']; ?></h3><span style="float:right;"><a href="<?php echo $basead; ?>addaparatur/<?php echo $_GET['q']; ?>" class="btn btn-circle btn-primary"><i class="glyphicon glyphicon-plus"></i> Tambah Aparatur</a></span>
            <?php }else{?>
              <h3 class="box-title"></span>&nbsp;HAKIM/ASN/P3K/PPNPN PENGADILAN NEGERI TARAKAN KELAS I-B</h3>
            <?php } ?>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th width="3%">NO</th>
                <?php if(empty($_GET['q'])){
                  echo '<th width="20%">BAGIAN</th>';
                } ?>
                  <th>NIP</th>
                  <th>NAMA</th>
                  <th width="30%">OPSI</th>
                  <th width="5%">POIN</th>
                </tr>
                </thead>
                <tbody>
<?php
if(isset($_GET['q'])){
  $smk=mysqli_query($con,"SELECT * FROM aparatur where c_bagian='$_GET[q]' order by nama asc ");
}else{
  $smk=mysqli_query($con,"SELECT * FROM aparatur order by nama asc ");
}             $vr=1;while($akh=mysqli_fetch_array($smk)){ $kk=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM bagian where c_bagian='$akh[c_bagian]' ")); $p=mysqli_fetch_array(mysqli_query($con,"SELECT sum(bobot) as p from pelanggaran where c_aparatur='$akh[c_aparatur]' ")); ?>                
                <tr>
                  <td><?php echo $vr; ?></td>
                <?php if(empty($_GET['q'])){
                  echo '<td>'.$kk['bagian'].'</td>';
                }?>
                  <td><?php echo $akh['nip']; ?></td>
                  <td><a href="<?php echo $basead; ?>search/<?php echo $akh['nip']; ?>"><?php echo $akh['nama']; ?></a></td>
                  <td>
                  <a href="<?php echo $basead; ?>pimatasan/<?php echo $akh['c_aparatur']; ?>" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-user"></i> Pimpinan Atasan Langsung</a>
                  <a href="<?php echo $basead; ?>pelaksana/<?php echo $akh['c_aparatur']; ?>" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-user"></i> User</a>
                  <a href="<?php echo $basead; ?>editaparatur/<?php echo $akh['c_aparatur']; ?>" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
                  <a class="btn btn-danger btn-sm" data-target="#hapus<?php echo $akh['c_aparatur']; ?>" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i></a>
                  <a target="_blank" class="btn bg-blue btn-sm" href="<?php echo $basead.'print/printpelaparatur?aparatur='.$akh['c_aparatur']; ?>"><i class="glyphicon glyphicon-print"></i> Print</a></td></td>
                  <td align="center"><a href="<?php echo $basead; ?>lihatpelanggaranaparatur/<?php echo $akh['c_aparatur']; ?>"><?php echo $p['p']; ?></a>
                  </td>
                </tr>
<div id="hapus<?php echo $akh['c_aparatur']; ?>" class="modal" tabindex="-2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">Konfirmasi Hapus Aparatur</h4>
        </div>
        <div class="modal-body">
          <p>Jika Anda Menghapus Data Ini, Akan Berpengaruh Pada</p>
          <b>1. Data Pimpinan Atasan Langsung Dari (<?php echo $akh['nama']; ?>) Juga Terhapus<br>2. Data Pelanggaran Aparatur Pengadilan Negeri Tarakan(<?php echo $akh['nama']; ?>) Secara Keseluruhan Juga Terhapus</b>
        </div>
        <div class="modal-footer">
        <?php if(isset($_GET['q'])){ ?>
          <a href="<?php echo $basead; ?>a-control/<?php echo md5('hapusaparatur').'/'.$akh['c_aparatur']; ?>" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Lanjutkan</a> 
        <?php }else{ ?>
          <a href="<?php echo $basead; ?>a-control/<?php echo md5('hapusaparatur2').'/'.$akh['c_aparatur']; ?>" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Lanjutkan</a> 
        <?php } ?><button class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Tutup</button>
        </div>
        </div>
    </div>
</div>
<?php $vr++; } ?>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->