<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Master User
        <small>Master User Koordinator</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master</a></li>
        <li class="active">Master User Koordinator</li>
      </ol>
    </section>

    

    <!-- Main content -->
    <section class="content">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-default">
                    Tambah User Koordinator
        </button>

        <br>

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">User List Koordinator</h3>

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
                  <th>Nama Koor</th>
                  <th>Alamat Koor</th>
                  <th>Username</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php 
                $x=1;
                $no=1;
                foreach ($user_koor->result() as $row) { ?>

                <tr>
                  <td><?= $x++; ?></td>
                  <td><?= $row->nama_koor ?></td>
                  <td><?= $row->nama_master_alamat ?></td>
                  <td><?= $row->username ?></td>
                  <td>
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modal-edit<?= $no++; ?>"><i class="fa fa-edit"></i></button>
                    <a href="<?= base_url('admin/Master/hapus_data_koor/'.$row->id_user_koor) ?>" type="button" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                  </td>
                </tr>
                <?php }
                 ?>
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

  <!-- Add Data -->
  <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
            <form action="<?= base_url('admin/Master/tambah_user_koor') ?>" method="post">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah User Koordinator</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Koordinator</label>
                  <input type="text" class="form-control" id="nama_user" name="nama_koor" required>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Panggilan</label>
                  <input type="text" class="form-control" id="username" name="panggilan" required>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Username</label>
                  <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Alamat Koor</label>
                  <select name="alamat" id="alamat" class="form-control" required>
                      <option value="">Pilih Alamat</option>
                      <?php foreach ($alamat_koor->result() as $row ) {?>
                          <option value="<?= $row->id_master_alamat ?>"><?= $row->nama_master_alamat ?></option>
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
        <!-- /.modal -->
  <!-- End Add Data -->

  <!-- Edit data -->
  <?php 
  $y=1;
  foreach ($user_koor->result() as $row) { 
    $a = $row->alamat_koor;
    ?>
  
  <div class="modal fade" id="modal-edit<?= $y++; ?>">
          <div class="modal-dialog">
            <div class="modal-content">
            <form action="<?= base_url('admin/Master/edit_data_koor/'.$row->id_user_koor) ?>" method="post">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Edit User Koordinator</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama User</label>
                  <input type="text" class="form-control" id="nama_user" name="nama_koor" value="<?= $row->nama_koor ?>">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Panggilan</label>
                  <input type="text" class="form-control" id="nama_user" name="panggilan" value="<?= $row->panggilan_koor ?>">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Username</label>
                  <input type="text" class="form-control" id="username" name="username" value="<?= $row->username ?>">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Password</label>
                  <input type="text" class="form-control" id="password" name="password" value="<?= $row->password ?>">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Alamat Koor</label>
                  <select name="alamat" id="alamat" class="form-control" required>
                      <option value="">Pilih Alamat</option>
                      <?php foreach ($alamat_koor->result() as $row ) {?>
                          <option <?php if ($a == $row->id_master_alamat) {
                            echo "selected";
                          } ?> value="<?= $row->id_master_alamat ?>"><?= $row->nama_master_alamat ?></option>
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
        <!-- /.modal -->
<?php $no++;} ?>
  <!-- End Edit Data -->