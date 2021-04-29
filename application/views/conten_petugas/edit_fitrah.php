<?php 
foreach ($get_data->result() as $row) {
    $a = $row->nama_pemberi_zakat_fitrah;
    $b = $row->besaran_jiwa;
    $c = $row->berat_beras;
    $d = $row->total_beras;
    $e = $row->uang;
    $f = $row->alamat;
    $g = $row->keterangan;
}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Data Zakat Fitrah
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Fitrah</a></li>
        <li class="active">Edit Fitrah</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Edit Fitrah</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
            <form action="<?= base_url('petugas/Zakat/edit_fitrah/'.$row->id_zakat_fitrah) ?>" method="POST">
            <label for="nama">Nama Pemberi Zakat *</label>
              <input type="text" class="form-control" id="nama_zakat" name="nama_zakat" required value="<?= $a ?>">

              <div class="row">
              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Besaran Jiwa *</label>
                <input type="number" class="form-control" id="besaran_jiwa" name="besaran_jiwa" onkeyup="sum();" value="<?= $b ?>">
              </div>

              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Satuan Beras *</label>
                <input type="text" class="form-control" id="satuan_beras" name="satuan_beras" onkeyup="sum();" value="<?= $c ?>">
              </div>

              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Total *</label>
                <input type="text" class="form-control" id="total" name="total" disabled value="<?= $d ?>">
              </div>
            </div>

              <label for="nama">Uang</label>
              <input type="number" class="form-control" id="uang" name="uang" value="<?= $e ?>">

              <div class="row">
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Alamat</label>
                <textarea name="alamat" id="alamat" class="form-control"><?= $f ?></textarea>
              </div>
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Keterangan</label>
                <textarea name="keterangan" id="keterangan" class="form-control"> <?= $g ?></textarea>
              </div>
              </div>

              <div class="row">
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Tanggal</label>
                <input name="tanggal" id="tanggal" class="form-control" value="<?= date('Y-m-d H:i:s') ?>" disabled>
              </div>
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Petugas</label>
                <input name="petugas" id="petugas" class="form-control" disabled value="<?= $name ?>">
              </div>
            </div>
            <br>
            <button type="submit" class="btn btn-warning"><i class="fa fa-upload"></i> | Update Data</button>
            </form>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->