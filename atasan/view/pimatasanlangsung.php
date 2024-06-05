      <div class="row">
        <div class="col-xs-12 col-md-12 col-lg-12">
        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='chat'){?>
          <div style="display: none;" class="alert alert-success alert-dismissable">Percakapan Berhasil Ditambahkan
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>
        <?php $_SESSION['pesan'] = '';?>
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"></span>&nbsp;DAFTAR PIMPINAN ATASAN LANGSUNG</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th width="5%">NO</th>
                  <th>PIMPINAN ATASAN LANGSUNG</th>
                  <th>NAMA</th>
                  <th>JABATAN/BAGIAN</th>
                  <th>OPSI</th>
                </tr>
                </thead>
                <tbody>
<?php $smk=mysqli_query($con,"SELECT * FROM pimatasan order by nama asc ");$vr=1;while($akh=mysqli_fetch_array($smk)){ $csis=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM aparatur where c_aparatur='$akh[c_aparatur]' ")); $ckel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM bagian where c_bagian='$csis[c_bagian]' "));
?>                
                <tr>
                  <td><?php echo $vr; ?></td>
                  <td><?php echo $akh['nama']; ?></td>
                  <td><?php echo $csis['nama']; ?></td>
                  <td><?php echo $ckel['bagian']; ?></td>
                  <td align="center">
              <?php $crc=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM relasichat where c_atasan='$_SESSION[c_atasan]' and c_pimatasan='$akh[c_pimatasan]' "));
                if($crc==NULL){?>
                    <a href="<?php echo $basegu; ?>g-control/<?php echo md5('tambahchat').'/'.$akh['c_pimatasan']; ?>" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-plus"></i> Tambah Percakapan</a>
              <?php } else{ ?>
                    <a href="<?php echo $basegu; ?>pesan/<?php echo $akh['c_pimatasan']; ?>/_" class="btn btn-warning btn-sm"><i class="glyphicon glyphicon-comment"></i> Kirim Pesan</a>
              <?php } ?>
                  </td>
                </tr>
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