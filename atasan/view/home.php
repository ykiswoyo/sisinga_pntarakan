<?php $kelkel=mysqli_query($con,"SELECT * FROM bagian order by bagian asc "); ?>
<script type="text/javascript" src="<?php echo $basegu; ?>js/jquery.min.js"></script>
<script src="<?php echo $basegu; ?>js/highcharts.js"></script>
<script type="text/javascript">
$(function () {
    var chart;
    $(document).ready(function() {
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'containertm', 
                type: 'column',  
                marginRight: 0,
                marginBottom: 50
            },
            title: {
                text: '',
                x: -20 
            },
            subtitle: {
                text: '',
                x: -20
            },
            xAxis: {  
                categories: [
                'Total Pelanggaran',             
                ]
            },
            yAxis: {
                title: {
                    text: ''
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: { 
                formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                        this.x +': '+ this.y ;
                }
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                verticalAlign: 'top',
                x: -10,
                y: 0,
                borderWidth: 0
            },
            series: [
            <?php $kel=mysqli_query($con,"SELECT * FROM bagian order by bagian asc "); while($dkel=mysqli_fetch_array($kel)){ $jum=mysqli_query($con,"SELECT * FROM pelanggaran where c_bagian='$dkel[c_bagian]' "); $jumpel=mysqli_num_rows($jum); ?>
            {  
                name: '<?php echo $dkel['bagian']; ?>',
                data: 
                [
                  <?php  echo ''.$jumpel.','; ?>
                ],
            },
            <?php } ?>
            ]
        });
    });
    
}); 
</script>
<style type="text/css">.judul{width: 100%; background-color: #FFF; padding: 10px;margin-bottom: 10px; }</style>
<div class="judul">
SERING MELAKUKAN PELANGGARAN
</div>
<div class="row">
<?php $pengawasan=mysqli_query($con,"SELECT c_aparatur, sum(bobot) as jb from pelanggaran group by c_aparatur order by jb desc limit 4 "); while($hpengawasan=mysqli_fetch_array($pengawasan)){ $sis=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM aparatur where c_aparatur='$hpengawasan[c_aparatur]' ")); $kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM bagian where c_bagian='$sis[c_bagian]' ")); ?>
  <div class="col-md-3">
    <div class="box box-primary">
      <div class="box-body box-profile">
        <h4 class="profile-username text-center" style="font-size: 16px;"><?php echo $sis['nama']; ?></h4>
        <p class="text-muted text-center"><?php echo $kel['bagian']; ?></p>
        <ul class="list-group list-group-unbordered">
        <li class="list-group-item">
          <?php if($hpengawasan['jb']>20){ $style='style="font-size: 28px;margin-top: -10px;color:#d9534f;"'; }else{ $style='style="font-size: 28px;margin-top: -10px;"'; } ?>
          <b>Poin Pelanggaran<a class="pull-right" <?php echo $style.'>'.$hpengawasan['jb']; ?></a></b>
          </li>
        </ul>
        <a href="<?php echo $basegu; ?>lihatpelanggaranaparatur/<?php echo $hpengawasan['c_aparatur']; ?>/_" class="btn btn-primary btn-block">Lihat Pelanggaran</a>
      </div>
    </div>
  </div>
<?php } ?>
</div>
<div class="row">
  <div class="col-md-4">
    <div class="box">
      <div class="box-header">
        <p>PELANGGARAN SERING DILAKUKAN</p>
        <div class="box-tools">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="glyphicon glyphicon-minus"></i></button>
        </div>
      </div>
      <div class="box-body">
      <table class="table table-hover">
        <thead></thead>
        <tbody>
    <?php $vr=1; $pyd=mysqli_query($con,"SELECT c_benpel, count(c_benpel) as bp from pelanggaran group by c_benpel order by bp desc limit 5 ");while($hpyd=mysqli_fetch_array($pyd)){
    $ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$hpyd[c_benpel]' "));
    ?>                
          <tr>
            <td><?php echo $ben['benpel']; ?></td>
            <td><?php echo $hpyd['bp']; ?></td>
          </tr>
    <?php $vr++; } ?>
        </tbody>
      </table>
      </div>
    </div>
  </div>
  <div class="col-xs-12 col-md-8 col-lg-8">
    <div class="box">
      <div class="box-header">
        <h5 class="text-center"></h5>
      </div>
      <div class="box-body">
      <table>
        <div id="containertm" style="width:90%;"></div>
      </table>
      </div>
    </div>
  </div>
</div>





