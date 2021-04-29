<?php 
$m = date('Y');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Laporan Zakat Maal</title>
</head>

<body>

<table width="905" height="auto">
  <tr>
    <td width="263"><div align="center"><img src="<?= base_url('./assets/img/logo.png') ?>" alt="logo" width="55%"></div></td>
    <td width="622"> <span class="style4"><strong>DATA PEMBERI ZAKAT MAAL</strong> </span>    
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


<table width="905" height="129" border="1" class="laporan" style="border-collapse: collapse;">
  <tr>
    <th width="27" rowspan="2"><div align="center">NO</div></th>
    <th width="130" rowspan="2"><div align="center">NAMA</div></th>
    <th height="23" colspan="2"><div align="center">ZAKAT</div></th>
    <th width="110" rowspan="2"><div align="center">ALAMAT</div></th>
    <th width="109" rowspan="2"><div align="center">TANGGAL</div></th>
    <th width="113" rowspan="2"><div align="center">PETUGAS1</div></th>
    <th width="113" rowspan="2"><div align="center">PETUGAS2</div></th>
  </tr>
  <tr>
    <th width="118" height="23"><div align="center">Kategori</div></th>
    <th width="119"><div align="center">Nominal</div></th>
  </tr>
  <?PHP 
  $x=1;
  foreach ($maal->result() as $row) { ?>
  
  <tr>
    <td><?= $x++ ?></td>
    <td><?= $row->nama_pemberi_maal ?></td>
    <td><?= $row->nama_maal ?></td>
    <td>Rp. <?= number_format($row->nominal_zakat) ?>,-</td>
    <td><?= $row->alamat ?></td>
    <td><?= date('d F Y', strtotime($row->tanggal)) ?></td>
    <td><?= $row->petugas1 ?></td>
    <td><?= $row->petugas2 ?></td>	
  </tr>
  <?php } ?>
  <tr>
    <td colspan="2" style="text-align: center"><strong> Keterangan Total </strong></td>
    <td colspan="2">
      <div align="justify">
        * Maal : &nbsp; <strong>Rp. <?php foreach ($total_zakat_maal->result() as $row) {
          echo number_format($row->total);
        } ?>,-</strong>
        <br>
        * Partisipasi Sosial : &nbsp; <strong>Rp. <?php foreach ($total_ps->result() as $row) {
          echo number_format($row->total);
        } ?> ,-</strong>
        <br>
        * Infaq / Shodaqoh : &nbsp; <strong>Rp. <?php foreach ($total_is->result() as $row) {
          echo number_format($row->total);
        } ?> ,-</strong>
        <br>
        * Fidyah : &nbsp; <strong>Rp. <?php foreach ($total_fidyah->result() as $row) {
          echo number_format($row->total);
        } ?> ,-</strong>
      </div>
    </td>
    <td colspan="5"><small>*Cek Kembali Jika Ada Kekeliruan Data</small></td>
  </tr>
  </table>
  
  <br><br>
  <table width="900">
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
