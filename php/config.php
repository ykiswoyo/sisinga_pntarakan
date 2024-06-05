<?php
$dbhost ='localhost';
$dbuser ='root';
$dbpass ='';
$dbname ='pengawasan';
$db_dsn = "mysql:dbname=$dbname;host=$dbhost";
try {
  $db = new PDO($db_dsn, $dbuser, $dbpass);
} catch (PDOException $e) {
  echo 'Connection failed: '.$e->getMessage();
}
$con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
/*css.plugin.hancon <?php echo $base; ?>*/
$base='http://localhost/pengawasan/';
/*control(link.redirect) <?php echo $basecon; ?>*/
$basead='http://localhost/pengawasan/admin/';
/*bagian(link.redirect) <?php echo $basekel; ?>*/
$basegu='http://localhost/pengawasan/atasan/';
$basewa='http://localhost/pengawasan/pimatasanlangsung/';
$baseus='http://localhost/pengawasan/user/';

?>
