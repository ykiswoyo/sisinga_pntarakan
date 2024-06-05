      <div class="row">
        <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user-2">
                  <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-green">
              <p class="text-center" style="font-size: 20px;border-bottom: 1px solid #fff;">Pimpinan Atasan Langsung dari:</p>
              <div class="widget-user-image">
                <img class="img-circle" src="<?php echo $base; ?>php/img/aparatur2.png" alt="User ">
              </div>
                    <!-- /.widget-user-image -->
              
              <h4 class="widget-user-username" style="font-size: 20px;"><?php echo $aparatur['nama']; ?></h4>
              
             
              <h5 class="widget-user-desc"><?php echo $bagian['bagian']; ?></h5>
              
            </div>
            <div class="box-footer no-padding">
              <ul class="nav nav-stacked">
                <li><a>Total Pelanggaran <span style="font-size: 20px;margin-top:-3px;color: #428bca;" class="pull-right"><?php echo $pel; ?></span></a><li>
                <li><a>Poin Pelanggaran <span style="font-size: 20px;margin-top:-3px;color: #d9534f;" class="pull-right"><?php if($totalpel['total']>0){echo $totalpel['total'];}else{echo "0";} ?></span></a></li>
              </ul>
            </div>
          </div>
                <!-- /.widget-user -->
        
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-hover">
                <thead></thead>
                <tbody>
<?php $smk=mysqli_query($con,"SELECT * FROM atasan order by nama asc ");$vr=1;while($akh=mysqli_fetch_array($smk)){ ?>                
                <tr>
                  <td><?php echo $vr; ?></td>
                  <td><?php echo $akh['nama']; ?></td>
                  <td class="center">
              
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