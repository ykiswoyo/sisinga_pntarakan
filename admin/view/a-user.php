<div class="row">
        <div class="col-xs-12 col-md-12 col-lg-12">
        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='hapus'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable">Data User Berhasil Dihapus
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>
        <?php $_SESSION['pesan'] = '';?>
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"></span>&nbsp;DATA USER</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th width="5%">NO</th>
                  <th>USER</th>
                  <th>APARATUR</th>
                  <th>USERNAME</th>
                  <th>PASSWORD</th>
                  <th>OPSI</th>
                </tr>
                </thead>
                <tbody>
<?php $smk=mysqli_query($con,"SELECT * FROM pelaksana order by nama asc ");$vr=1;while($akh=mysqli_fetch_array($smk)){
       $csis=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM aparatur where c_aparatur='$akh[c_aparatur]' "));
?>                
                <tr>
                  <td><?php echo $vr; ?></td>
                  <td><?php echo $akh['nama']; ?></td>
                  <td><?php echo $csis['nama']; ?></td>
                  <td><?php echo $akh['username']; ?></td>
                  <td><?php echo $akh['password']; ?></td>
                  <td align="center"><a href="<?php echo $basead; ?>pelaksana/<?php echo $akh['c_aparatur'].''; ?>" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-pencil"></i> Edit</a>&nbsp;<a class="btn btn-danger btn-sm" data-target="#hapus<?php echo $akh['c_pelaksana']; ?>" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i></a></td>
                </tr>
<div id="hapus<?php echo $akh['c_pelaksana']; ?>" class="modal" tabindex="-2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">Konfirmasi Hapus Data User</h4>
        </div>
        <div class="modal-body">
          <p>Jika Anda Menghapus Data Ini, Akan Berpengaruh Pada</p>
          <b>1. Percakapan Yang Dilakukan Oleh (<?php echo $akh['nama']; ?>) Juga Terhapus</b>
        </div>
        <div class="modal-footer">
          <a href="<?php echo $basead; ?>a-control/<?php echo md5('hapuspelaksana').'/'.$akh['c_pelaksana']; ?>" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Lanjutkan</a> 
          <button class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Tutup</button>
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