<?php $eg=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM atasan where c_atasan='$_GET[q]' ")); ?>
<div class="row">
        <!-- left column -->
        <div class="col-md-12">
        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='edit'){?>
          <div style="display: none;" class="alert alert-success alert-dismissable">Atasan Langsung Berhasil Diedit
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } $_SESSION['pesan'] = '';?>
          <!-- general form elements -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Data Atasan Langsung</h3><span style="float:right;"><a href="<?php echo $basead.'atasan'; ?>" class="btn btn-circle btn-primary"><i class="glyphicon glyphicon-th-list"></i> Lihat Data Atasan Langsung</a></span>
            </div>
            <!-- form start -->
            <form role="form" method="post" enctype="multipart/form-data" action="<?php echo $basead; ?>a-control/<?php echo md5('editatasan'); ?>/access">
             <input type="hidden" name="c_atasan" class="form-control" value="<?php echo $eg['c_atasan']; ?>">
              <div class="box-body">
                <div class="form-group">
                  <label>NAMA</label>
                  <input type="text" name="nama" class="form-control" value="<?php echo $eg['nama']; ?>">
                </div>
                <div class="form-group">
                  <label>INISIAL</label>
                  <input type="text" name="inisial" class="form-control" value="<?php echo $eg['inisial']; ?>">
                </div>
                <div class="form-group">
                  <label>USERNAME</label>
                  <input type="text" name="username" class="form-control" value="<?php echo $eg['username']; ?>">
                </div>
                <div class="form-group">
                  <label>PASSWORD</label>
                  <input type="text" name="password" class="form-control" value="<?php echo $eg['password']; ?>">
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-success btn-circle"><i class="glyphicon glyphicon-ok"></i> Simpan</button>
              </div>
            </form>
          </div>
          <!-- /.box -->
        </div>
</div>