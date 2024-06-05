<div class="row">
        <!-- left column -->
        <div class="col-md-12">
        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='tambah'){?>
          <div style="display: none;" class="alert alert-success alert-dismissable">Data Atasan Langsung Berhasil Ditambahkan
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } $_SESSION['pesan'] = '';?>
          <!-- general form elements -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Tambah Data Atasan Langsung</h3><span style="float:right;"><a href="<?php echo $basead.'atasan'; ?>" class="btn btn-circle btn-primary"><i class="glyphicon glyphicon-th-list"></i> Lihat Data Atasan Langsung</a></span>
            </div>
            <!-- form start -->
            <form role="form" method="post" enctype="multipart/form-data" action="<?php echo $basead; ?>a-control/<?php echo md5('addatasan'); ?>/access">
              <div class="box-body">
                <div class="form-group">
                  <label>NAMA</label>
                  <input type="text" name="nama" class="form-control">
                </div>
                <div class="form-group">
                  <label>INISIAL</label>
                  <input type="text" name="inisial" class="form-control">
                </div>
                <div class="form-group">
                  <label>USERNAME</label>
                  <input type="text" name="username" class="form-control">
                </div>
                <div class="form-group">
                  <label>PASSWORD</label>
                  <input type="text" name="password" class="form-control">
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