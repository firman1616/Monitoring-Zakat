<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Donatur
        <small>Data Donatur</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Donatur</a></li>
        <li class="active">Data Donatur</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">
        Tambah Data Donatur
    </button>

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Daftar Donatur Masjid Besar Nurul Huda</h3>

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
                  <th>Nama Donatur</th>
                  <th>Nominal</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php 
                $x=1;
                $no=1;
                foreach ($donatur->result() as $row) { ?>
                <tr>
                  <td><?= $x++ ?></td>
                  <td><?= $row->nama_donatur ?></td>
                  <td>Rp. <?= number_format($row->nominal) ?>,-</td>
                  <td><?php if ($row->status == 1) { ?>
                    <button disabled class="btn btn-success">Diterima</button>
                  <?php }else {?>
                    <button disabled class="btn btn-danger">Menunggu</button>
                  <?php } ?></td>
                  <td>
                  <?php if ($row->status == '0') { ?>
                    <a href="<?= base_url('admin/Donatur/update_status/'.$row->id_donatur) ?>" class="btn btn-primary"><i class="fa  fa-check-square"></i></a>
                  <?php }else { ?>
                    <a href="<?= base_url('admin/Donatur/update_status2/'.$row->id_donatur) ?>" class="btn btn-primary"><i class="fa  fa-check-square"></i></a>
                  <?php } ?>
                  <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modal-edit<?= $no++; ?>"><i class="fa fa-edit"></i></button>
                  <a href="<?= base_url('admin/Donatur/hapus_donatur/'.$row->id_donatur) ?>" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                  </td>
                </tr>
                <?php } ?>
                </tbody>
              </table>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Tambah Modal -->
  <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
            <form action="<?= base_url('admin/Donatur/tambah_donatur') ?>" method="post">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Data Donatir</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Donatur</label>
                  <input type="text" class="form-control" id="nama_donatur" name="nama_donatur">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Alamat Donatur</label>
                  <input type="text" class="form-control" id="alamat_donatur" name="alamat_donatur">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Nominal</label>
                  <input type="number" class="form-control" id="nominal" name="nominal">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Petugas Penerima</label>
                  <input type="text" class="form-control" id="petugas_penerima" name="petugas_penerima" value="<?= $name; ?>" disabled>
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

<!-- Modal Edit -->
<?php 
$y=1;
foreach ($donatur->result() as $row) { ?>
  
<div class="modal fade" id="modal-edit<?= $y++; ?>">
          <div class="modal-dialog">
            <div class="modal-content">
            <form action="<?= base_url('admin/Donatur/edit_donatur/'.$row->id_donatur) ?>" method="post">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Edit Data Donatir</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Donatur</label>
                  <input type="text" class="form-control" id="nama_donatur" name="nama_donatur" value="<?= $row->nama_donatur ?>">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Alamat Donatur</label>
                  <input type="text" class="form-control" id="alamat_donatur" name="alamat_donatur" value="<?= $row->alamat_donatur ?>">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Nominal</label>
                  <input type="number" class="form-control" id="nominal" name="nominal" value="<?= $row->nominal ?>">
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Petugas Penerima</label>
                  <input type="text" class="form-control" id="petugas_penerima" name="petugas_penerima" value="<?= $name; ?>" disabled>
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
<?php $no++; } ?>