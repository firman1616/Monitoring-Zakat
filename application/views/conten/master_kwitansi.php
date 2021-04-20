<!-- Content Wrapper. Contains page content -->
<?php 
foreach ($get_data->result() as $row) {
    $a = $row->nama_organisasi;
    $b = $row->nama_lembaga;
    $c = $row->logo_organisasi;
    $d = $row->pembayaran;
    $e = $row->kota_kwitansi;
    $f = $row->alamat_organisasi;
}
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Master Kwitansi
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Master</a></li>
        <li class="active">Master Kwitansi</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Setting Master Kwitansi</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
        <form action="<?= base_url('admin/Master/update_master/'.$row->id_kwitansi) ?>" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">Logo</label>
                <input type="file" class="form-control" id="filefoto" name="filefoto">
                <img width="20%" src="<?php echo base_url('assets/img/'.$c) ?>">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Nama Organisasi</label>
                <input type="text" class="form-control" id="nama_organisasi" name="nama_organisasi" value="<?= $a ?>">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Nama Lembaga</label>
                <input type="text" class="form-control" id="nama_lembaga" name="nama_lembaga" value="<?= $b ?>">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Pembayaran</label>
                <input type="text" class="form-control" id="pembayaran" name="pembayaran" value="<?= $d ?>">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Kota Oranisasi</label>
                <input type="text" class="form-control" id="kota" name="kota_organisasi" value="<?= $e ?>">
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->