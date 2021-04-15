<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        ZAKAT
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Zakat</a></li>
        <li class="active">Zakat Fitrah</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <button class="btn btn-primary" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Tambah Data</button>

      <!-- Default box -->
      <!-- Collaps -->
      <div class="box collapse" id="collapseExample">
        <div class="box-header with-border">
          <h3 class="box-title">Zakat Fitrah</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
          <form action="<?= site_url('admin/Zakat/tambah_fitrah') ?>" method="post">
            <label for="nama">Nama Pemberi Zakat *</label>
            <input type="text" class="form-control" id="nama_zakat" name="nama_zakat" required>

            <div class="row">
              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Besaran Jiwa *</label>
                <input type="number" class="form-control" id="besaran_jiwa" name="besaran_jiwa" onkeyup="sum();" required>
              </div>

              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Satuan Beras *</label>
                <input type="text" class="form-control" id="satuan_beras" name="satuan_beras" onkeyup="sum();" required>
              </div>

              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Total *</label>
                <input type="text" class="form-control" id="total" name="total" disabled>
              </div>
            </div>
            <label for="nama">Uang</label>
            <input type="number" class="form-control" id="uang" name="uang">

            <div class="row">
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Alamat</label>
                <textarea name="alamat" id="alamat" class="form-control"></textarea>
              </div>
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Keterangan</label>
                <textarea name="keterangan" id="keterangan" class="form-control"></textarea>
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
            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> | Tambah Data</button>
          </form>
        </div>
      </div>
      <!-- End Collapse -->
      <!-- /.box -->
      <!-- Data Zakat -->
      <br><br>
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Zakat Fitrah</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
        <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Pemberi Zakat</th>
                  <th>Besaran Jiwa</th>
                  <th>Satuan Beras</th>
                  <th>Petugas</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php 
                $x=1;
                $no=1;
                foreach ($fitrah->result() as $row) {?>
                
                <tr>
                  <td><?= $x++; ?></td>
                  <td><?= $row->nama_pemberi_zakat_fitrah ?></td>
                  <td><?= $row->besaran_jiwa ?></td>
                  <td><?= $row->berat_beras ?></td>
                  <td><?= $row->nama_petugas ?></td>
                  <td>
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modal-edit<?= $no++; ?>"><i class="fa fa-edit"></i></button>
                    <a href="<?= base_url('admin/Zakat/hapus_fitrah/'.$row->id_zakat_fitrah) ?>" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                  </td>
                </tr>
                <?php } ?>
                
                </tbody>
              </table>
        </div>
      </div>
      <!-- End Data Zakat -->

    </section>
    <!-- /.content -->
</div>

<!-- Modal Edit -->
<?php 
$y=1;
foreach ($fitrah->result() as $row) { 
  $a = $row->alamat;
  $k = $row->keterangan;
  ?>

<div class="modal fade" id="modal-edit<?= $y++; ?>">
          <div class="modal-dialog">
            <div class="modal-content">
            <form action="<?= base_url('admin/Zakat/edit_fitrah/'.$row->id_zakat_fitrah) ?>" method="post">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Default Modal</h4>
              </div>
              <div class="modal-body">
              <label for="nama">Nama Pemberi Zakat *</label>
              <input type="text" class="form-control" id="nama_zakat" name="nama_zakat" required value="<?= $row->nama_pemberi_zakat_fitrah ?>">

              <label for="nama">Uang</label>
              <input type="number" class="form-control" id="uang" name="uang" value="<?= $row->uang ?>">

              <div class="row">
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Alamat</label>
                <textarea name="alamat" id="alamat" class="form-control"><?= $a ?></textarea>
              </div>
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Keterangan</label>
                <textarea name="keterangan" id="keterangan" class="form-control"> <?= $k ?></textarea>
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
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
              </div>
              </form>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <?php $no++;}
?>
<!-- End Modal Edit -->