<div class="row">
  <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
    <div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
      <div class="widget-user-header bg-green">
        <p class="text-center" style="font-size: 20px;border-bottom: 1px solid #fff;">USER dari:</p>
        <div class="widget-user-image">
          <img class="img-circle" src="<?php echo $base; ?>php/img/user3.png" alt="User Avatar">
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
  </div>
  <div class="col-xs-12 col-md-8 col-lg-8">
    <div class="box box-info">
      <div class="box-header with-border">
        <h3 class="box-title">&nbsp;Pelanggaran <?php echo $aparatur['nama'] ?></h3><p class="pull-right"><a target="_blank" class="btn bg-blue btn-sm" href="<?php echo $baseus.'print/printpelaparatur?aparatur='.$aparatur['c_aparatur'].''; ?>"><i class="glyphicon glyphicon-print"></i> Print</a></p>
      </div>
      <div class="box-body">
        <table class="table table-hover">
          <thead></thead>
          <tbody>
<?php $smk=mysqli_query($con,"SELECT * FROM pelanggaran where c_aparatur='$or[c_aparatur]' order by at desc ");$vr=1;while($akh=mysqli_fetch_array($smk)){
$gur=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM atasan where c_atasan='$akh[c_atasan]' "));
$ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$akh[c_benpel]' "));
?>                
            <tr>
              <td><?php echo $vr; ?></td>
              <td><?php echo $ben['benpel']; ?></td>
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
