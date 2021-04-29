<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        ZAKAT
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Zakat</a></li>
        <li class="active">Zakat Maal</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <button class="btn btn-primary" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Tambah Data</button>

      <!-- Default box -->
      <!-- Collaps -->
      <div class="box collapse" id="collapseExample">
        <div class="box-header with-border">
          <h3 class="box-title">Zakat Maal</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
          <form action="<?= base_url('petugas/Zakat/tambah_maal') ?>" method="post">
            <label for="nama">Nama Pemberi Zakat *</label>
            <input type="text" class="form-control" id="nama_zakat" name="nama_zakat" required>

            <div class="row">
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Kategori Zakat *</label>
                <select name="kategori" id="kategori" class="form-control">
                    <option value="">-- Pilih Kategori --</option>
                    <?php foreach ($kategori_maal->result() as $row)  :?>
                        <option value="<?= $row->id_master_maal ?>"><?= $row->nama_maal ?></option>
                    <?php endforeach; ?>
                </select>
              </div>

              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Nominal Zakat *</label>
                <input type="number" class="form-control" id="nominal_zakat" name="nominal_zakat"  required>
              </div>

            </div>

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
              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Tanggal</label>
                <input name="tanggal" id="tanggal" class="form-control" value="<?= date('Y-m-d H:i:s') ?>" disabled>
              </div>
              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Petugas</label>
                <input name="petugas" id="petugas" class="form-control" disabled value="<?= $name ?>">
              </div>

              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Petugas 2</label>
                <select name="petugas2" id="petugas2" class="form-control">
                    <option value=""></option>
                    <?php foreach ($petugas2->result() as $row) { ?>
                        <option value="<?= $row->id_user_koor ?>"><?= $row->nama_koor ?></option>
                    <?php } ?>
                </select>
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
          <h3 class="box-title">Zakat Maal</h3>

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
                  <th>Kategori Zakat</th>
                  <th>Nominal Zakat</th>
                  <th>Petugas</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php 
                $x=1;
                $no=1;
                foreach ($maal->result() as $row) {?>
                
                <tr>
                  <td><?= $x++; ?></td>
                  <td><?= $row->nama_pemberi_maal ?></td>
                  <td><?= $row->nama_maal ?></td>
                  <td>Rp. <?= number_format($row->nominal_zakat)  ?>,-</td>
                  <td><?= $row->nama_petugas ?></td>
                  <td>
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modalEdit<?= $no++; ?>"><i class="fa fa-edit"></i></button>
                    <a href="<?= base_url('petugas/Zakat/hapus_maal/'.$row->id_zakat_maal) ?>" class="btn btn-danger"><i class="fa fa-trash"></i></a>
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

<!-- Edit data -->
<?php 
$y=1;
foreach ($maal->result() as $row) { 
  $a=$row->kategori_zakat;
  $b=$row->alamat;
  $c=$row->keterangan;
  $d=$row->petugas2;
  $e=$row->nominal_zakat;
  ?>

<div class="modal fade" id="modalEdit<?=$y++; ?>">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Edit Maal</h4>
              </div>
              <div class="modal-body">
              <label for="nama">Nama Pemberi Zakat *</label>
            <input type="text" class="form-control" id="nama_zakat" name="nama_zakat" value="<?= $row->nama_pemberi_maal ?>">

            <div class="row">
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Kategori Zakat *</label>
                <select name="kategori" id="kategori" class="form-control">
                    <option value="">-- Pilih Kategori --</option>
                    <?php foreach ($kategori_maal->result() as $row)  :?>
                        <option <?php if ($a == $row->id_master_maal) {
                          echo "selected";
                        } ?> value="<?= $row->id_master_maal ?>"><?= $row->nama_maal ?></option>
                    <?php endforeach; ?>
                </select>
              </div>

              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Nominal Zakat *</label>
                <input type="number" class="form-control" id="nominal_zakat" name="nominal_zakat"  value="<?= $e ?>">
              </div>

            </div>

            <div class="row">
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Alamat</label>
                <textarea name="alamat" id="alamat" class="form-control"><?= $b ?></textarea>
              </div>
              <div class="col-md-6 col-xs-6 col-lg-6">
                <label for="nama">Keterangan</label>
                <textarea name="keterangan" id="keterangan" class="form-control"> <?= $c ?></textarea>
              </div>
            </div>

            <div class="row">
              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Tanggal</label>
                <input name="tanggal" id="tanggal" class="form-control" value="<?= date('Y-m-d H:i:s') ?>" disabled>
              </div>
              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Petugas</label>
                <input name="petugas" id="petugas" class="form-control" disabled value="<?= $name ?>">
              </div>

              <div class="col-md-4 col-xs-4 col-lg-4">
                <label for="nama">Petugas 2</label>
                <select name="petugas2" id="petugas2" class="form-control">
                    <option value=""></option>
                    <?php foreach ($petugas2->result() as $row) { ?>
                        <option <?php if ($d == $row->id_user_koor) {
                          echo "selected";
                        } ?> value="<?= $row->id_user_koor ?>"><?= $row->nama_koor ?></option>
                    <?php } ?>
                </select>
              </div>
              </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <?php $no++;} ?>