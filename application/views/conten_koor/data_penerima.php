<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Penerima Zakat
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Penerima</li>
      </ol>
    </section>

    

    <!-- Main content -->
    <section class="content">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">
        Tambah Data Penerima
    </button>

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Data Penerima Zakat</h3>

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
                  <th>Nama Penerima</th>
                  <th>Ket Penerima</th>
                  <th>Koor</th>
                  <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $x=1;
                $no=1;
                foreach ($tampil->result() as $row) { ?>
                    
                <tr>
                  <td><?= $x++; ?></td>
                  <td><?= $row->nama_penerima ?></td>
                  <td><?= $row->nama_ket ?></td>
                  <td><?= $row->nama_koor ?></td>
                  <td>
                  <?php 
                  if ($row->status == '0') { ?>
                    <a href="<?= base_url('koor/Penerima/update_status/'.$row->id_penerima) ?>" class="btn btn-primary"><i class="fa  fa-check-square"></i></a>
                  <?php }else { ?>
                    <a href="<?= base_url('koor/Penerima/update_status2/'.$row->id_penerima) ?>" class="btn btn-success"><i class="fa  fa-check-square"></i></a>
                    <?php }
                  ?>
                      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#modal-edit<?= $no++; ?>"><i class="fa fa-edit"></i></button>
                      <a href="<?= base_url('koor/Penerima/hapus_data/'.$row->id_penerima) ?>" class="btn btn-danger"><i class="fa fa-trash"></i></a>
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

  <!-- Modal Tambah -->
  <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
            <form action="<?= base_url('koor/Penerima/tambah_data') ?>" method="post">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Data</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Penerima</label>
                    <input type="text" class="form-control" id="nama_penerima" name="nama_penerima" required>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Ket Penerima</label>
                    <select name="ket_penerima" id="ket_penerima" class="form-control" required>
                        <option value="">Pilih Keterangan</option>
                        <?php foreach ($master->result() as $row) { ?>
                            <option value="<?= $row->id_ket ?>"><?= $row->nama_ket ?></option>
                        <?php } ?>
                    </select>
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

<!-- Edit Data -->
<?php 
$y=1;
foreach ($tampil->result() as $row) { 
  $a = $row->ket_penerima;
  $b = $row->koor;
  ?>
  <div class="modal fade" id="modal-edit<?= $y++; ?>">
          <div class="modal-dialog">
            <div class="modal-content">
            <form action="<?= base_url('koor/Penerima/edit_data/'.$row->id_penerima) ?>" method="post">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Edit Data</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Penerima</label>
                    <input type="text" class="form-control" id="nama_penerima" name="nama_penerima" value="<?= $row->nama_penerima ?>">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Ket Penerima</label>
                    <select name="ket_penerima" id="ket_penerima" class="form-control" required>
                        <option value="">Pilih Keterangan</option>
                        <?php foreach ($master->result() as $row) { ?>
                            <option <?php if ($a == $row->id_ket) {
                              echo "selected";
                            } ?> value="<?= $row->id_ket ?>"><?= $row->nama_ket ?></option>
                        <?php } ?>
                    </select>
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