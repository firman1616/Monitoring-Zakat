<?php 
$m = date('Y');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><?= $title ?></title>
</head>

<body>

<!-- <table width="auto" height="auto"> -->
<table style="width: 700px; font-size: 14px;">
  <tr>
    <td width="263"><div align="center"><img src="<?= base_url('./assets/img/logo.png') ?>" alt="logo" width="55%"></div></td>
    <td width="622"> <span class="style4"><strong>DATA PEMBERI ZAKAT FITRAH</strong> </span>    
  <br />
  <span class="style5"><strong>MASJID BESAR "NURUL HUDA" JANTI</strong></span>    
  <br />
  <span class="style4">TAHUN <?= $m-579; ?> H / <?= $m ?> M</span> </td>
  </tr>
  <tr>
    <td colspan="2">
    <div align="center">Sekretariat : Jl. Brigjen Katamso Janti Telp : 083857151187 - 089661668843    
      </div></td>
  </tr>
</table>


<table width="700" height="auto" border="1" class="laporan" style="border-collapse: collapse;">
  <tr>
    <th width="27" rowspan="2">NO</th>
    <th width="130" rowspan="2">NAMA</th>
    <th width="74" rowspan="2">JUMLAH JIWA  </th>
    <th height="23" colspan="2">ZAKAT</th>
    <th width="110" rowspan="2">ALAMAT</th>
    <th width="113" rowspan="2">PETUGAS</th>
    <th width="109" rowspan="2">TANGGAL</th>
  </tr>
  <tr>
    <th width="118" height="23">BERAS</th>
    <th width="119">UANG</th>
  </tr>
  <?php 
  $x= 1;
  foreach ($fitrah->result() as $row) { ?>
    
  <tr>
    <td><?= $x++; ?></td>
    <td><?= $row->nama_pemberi_zakat_fitrah ?></td>
    <td><?= $row->besaran_jiwa ?></td>
    <td><?= $row->total_beras ?></td>
    <td>Rp. <?= number_format($row->uang) ?>,-</td>
    <td><?= $row->alamat ?></td>
    <td><?= $row->petugas ?></td>
    <td><?= date('d F Y', strtotime($row->tanggal)) ?></td>	
  </tr>
  <?php } ?>
  <tr>
    <td colspan="3" style="text-align: center"><strong> Total </strong></td>
    <?php foreach ($total_beras->result() as $key => $value) { ?>
    <td style="text-align: center;"><strong><?= $value->total ?> Kg</strong></td>
    <?php } ?>
    <?php foreach ($total_uang->result() as $key => $value) { ?>
    <td style="text-align: center;"><strong>Rp. <?= number_format($value->uang) ?>,-</strong></td>
    <?php } ?>
    <td colspan="3"><small>*Cek Kembali Jika Ada Kekeliruan Data</small></td>
  </tr>
  </table>
  
  <br><br>
    <table width="700">
      <tr>
        <td><div align="right">Janti, <?= date('d F Y') ?></div></td>
      </tr>
      <tr>
        <td><div align="right">(Ketua Amil Zakat) </div></td>
      </tr>
      <tr>
        <td height="72"><div align="right"></div> <div align="center"></div></td>
      </tr>

      <tr>
        <td><div align="right"><strong>(Moch. Firdi Widiansyah)</strong></div></td>
      </tr>
    </table>
</body>
</html>
