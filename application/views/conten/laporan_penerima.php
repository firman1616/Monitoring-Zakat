<?php 
foreach ($get_data->result() as $key => $value) {
  $a = $value->nama_master_alamat;
  $b = $value->nama_koor;
}

if (isset($_POST['cek'])) {
  $rt=$_POST['rt'];
}
?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><?= $title; ?></title>
<style type="text/css">
<!--
.style1 {
	font-size: large;
	font-weight: bold;
}
.style3 {
  color: #FF0000;
  font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="912" >
  <tr>
    <td width="263"><div align="center"><img src="<?= base_url('./assets/img/logo.png') ?>" alt="logo" width="55%"></div></td>
    <td width="622"> <span class="style4">PANITIA PENERIMA DAN PENYALUR ZAKAT FITRAH, ZAKAT MAAL, INFAQ DAN SHODAQOH SERTA PARTISIPASI SOSIAL</span>    
	<br />
	<span class="style1">MASJID BESAR &quot;NURUL HUDA&quot; JANTI WARU</span>	<br />
	TAHUN 1442 H / 2021 M</td>
  </tr>
  <tr>
	  <td colspan="2">
		<div align="center">Sekretariat : Jl. Brigjen Katamso Janti Telp : 083857151187 - 089661668843</div></td>
  </tr>
</table>
<table width="912">
  <tr>
    <td width="902"><div align="center">DAFTAR PENERIMA ZAKAT FITRAH/ZAKAT MAAL</div></td>
  </tr>
  <tr>
    <td><div align="center">TAHUN 1442 H / 2021 M</div></td>
  </tr>
  <tr>
    <td><strong>Wilayah : <?= $a ?> </strong></td>
  </tr>
  <tr>
    <td><strong>Koordinator : <?= $b ?> </strong></td>
  </tr>
</table>
<table width="912" border="1" style="border-collapse: collapse;">
  <tr>
    <td width="34" rowspan="2"><div align="center"><strong>NO</strong></div></td>
    <td width="268" rowspan="2"><div align="center"><strong>Nama</strong></div></td>
    <td colspan="3"><div align="center"><strong>Kategori</strong></div></td>
    <td width="138" rowspan="2"><div align="center"><strong>Keterangan</strong></div></td>
  </tr>
  <tr>
    <td width="145"><div align="center"><strong>Berat</strong></div></td>
    <td width="142"><div align="center"><strong>Ringan</strong></div></td>
    <td width="145"><div align="center"><strong>Sabilillah</strong></div></td>
  </tr>
  
  <?php 
  $x=1;
  foreach ($get_data->result() as $row) {
    $ket_penerima = $row->ket_penerima;
    $status = $row->status;
  ?>    
  <tr>
    <td align="center"><?= $x++; ?></td>
    <td><?= $row->nama_penerima ?></td>
    <td>
    <?php if ($ket_penerima == 1) {
        echo "<center>&#9989;</center>";
      }else{
        echo "";
      }?>
    </td>
    <td>
    <?php if ($ket_penerima == 2) {
        echo "<center>&#9989;</center>";
      }else{
        echo "";
      }?>
    </td>
    <td>
    <?php if ($ket_penerima == 3) {
        echo "<center>&#9989;</center>";
      }else{
        echo "";
      }?>
    </td>
    <td>
      <?php 
      if ($status == 0) { ?>
        <span class="style3">Belum Diberikan</span>
      <?php }else { ?>
        <span style="color:blue; font-weight: bold;">Sudah Diberikan</span>
      <?php }
      ?>
    </td>
  </tr>
  <?php } ?>
  <tr>
    <td colspan="2"><div align="center"><strong>TOTAL</strong></div></td>
    <td align="center"><?= $berat ?></td>
    <td align="center"><?= $ringan ?></td>
    <td align="center"><?= $sabilillah ?></td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="200">
  <tr>
    <td width="77">Berat</td>
    <td width="14"><div align="center">:</div></td>
    <td width="87"><?= $berat ?></td>
  </tr>
  <tr>
    <td>Ringan</td>
    <td><div align="center">:</div></td>
    <td><?= $ringan ?></td>
  </tr>
  <tr>
    <td>Sabilillah</td>
    <td><div align="center">:</div></td>
    <td><?= $sabilillah ?></td>
  </tr>
  <tr>
    <td colspan="3"><strong><hr></strong></td>
    
  </tr>
  <tr>
    <td><strong>Total</strong></td>
    <td><div align="center">:</div></td>
    <td><?= $berat + $ringan + $sabilillah ?></td>
  </tr>
</table>
<br />
<table width="912">
  <tr>
    <td><div align="center">Ketua Panitia </div></td>
    <td><div align="center"></div></td>
    <td><div align="center">Sekretaris</div></td>
  </tr>
  <tr>
    <td height="57">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center"><strong>(Moch. Firdi Widiansyah)</strong></div></td>
    <td><div align="center"></div></td>
    <td><div align="center"><strong>(Moch. Firman Firdaus)</strong></div></td>
  </tr>
</table>
</body>
</html>
