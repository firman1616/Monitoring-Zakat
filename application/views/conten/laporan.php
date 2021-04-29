<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Laporan Zakat
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

    <div class="row">
        <div class="col-lg-6 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                <?php foreach ($total_beras->result() as $row) { ?>
                    <h3><?= $row->total; ?> Kg</h3>
                <?php } ?>
                

                <p>Laporan Zakat Fitrah</p>
                </div>
                <div class="icon">
                <i class="ion ion-stats-bars"></i>
                </div>
                <a href="<?= base_url('admin/Laporan/laporan_fitrah') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>

        <!-- Maal -->
        <div class="col-lg-6 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                <h3>00</h3>

                <p>Laporan Zakat Maal</p>
                </div>
                <div class="icon">
                <i class="ion ion-stats-bars"></i>
                </div>
                <a href="<?= base_url('admin/Laporan/laporan_maal') ?>" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- End Maal -->

        <!-- Filter -->
        <form action="<?= base_url('admin/Laporan/laporan_penerima_rt') ?>" method="post">
        <div class="col-lg-6 col-xs-6">
            <!-- small box -->
            <select name="rt" id="rt" class="form-control" required>
                <option value="">Pilih Wilayah</option>
                <?php foreach ($wilayah->result() as $key => $value) { ?>
                    <option value="<?= $value->id_master_alamat ?>"><?= $value->nama_master_alamat ?></option>
                <?php } ?>
            </select>
        </div>
        <!-- End Filter -->

        <!-- Penerima -->
        <div class="col-lg-6 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                <h3>00</h3>

                <p>Laporan Penerima Zakat</p>
                </div>
                <div class="icon">
                <i class="ion ion-person"></i>
                </div>
                <button type="submit" name="cek" id="cek" class="small-box-footer btn-block">More info <i class="fa fa-arrow-circle-right"></i></button>
            </div>
        </div>
        </form>
        <!-- End Penerima -->
    </div>      

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->