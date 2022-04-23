<?php
foreach ($get_data->result() as $row) {
    $a = $row->nama_pemberi_zakat_fitrah;
    $b = $row->besaran_jiwa;
    $c = $row->berat_beras;
    $d = $row->total_beras;
    $e = $row->uang;
    $f = $row->alamat;
    $g = $row->alamat_lainnya;
    $h = $row->keterangan;
    $i = $row->id_zakat_fitrah;
}
?>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>Ubah Data Zakat Fitrah</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('Pembayaran') ?>">Pembayaran</a></li>
                <li class="breadcrumb-item"><a href="<?= site_url('Pembayaran/zakat_fitrah') ?>">Zakat Fitrah</a> </li>
                <li class="breadcrumb-item active">Ubah Data</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="row">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Ubah Data Zakat</h5>
                    <form action="<?= site_url('Pembayaran/update_zakat_fitrah/' . $i) ?>" method="post">
                        <div class="col-12">
                            <label class="form-label">Nama Pemberi Zakat <small style="color: red;">*</small></label>
                            <input type="text" class="form-control" id="nama_pemberi" name="nama_pemberi" required placeholder="ex. Sutaji" value="<?= $a; ?>">
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label class="form-label">Banyak Jiwa <small style="color: red;">*</small></label>
                                <input type="number" class="form-control" id="besaran_jiwa" name="besaran_jiwa" onkeyup="sum();" required value="<?= $b ?>">
                            </div>
                            <div class="col-4">
                                <label class="form-label">Berat Beras <small style="color: red;">*</small></label>
                                <input type="text" class="form-control" id="satuan_beras" name="satuan_beras" onkeyup="sum();" required value="<?= $c; ?>">
                            </div>
                            <div class="col-4">
                                <label class="form-label">Total Beras</label>
                                <input type="text" class="form-control" id="total" name="total" readonly value="<?= $d; ?>">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label class="form-label">Nominal Uang</label>
                                <input type="number" class="form-control" id="uang" name="uang" value="<?= $e; ?>">
                            </div>
                            <div class="col-4">
                                <label class="form-label">Alamat <small style="color: red;">*</small></label>
                                <select name="alamat" id="alamat" class="form-control" required>
                                    <option value="" disabled selected>Pilih Alamat</option>
                                    <?php foreach ($get_alamat->result() as $row) { ?>
                                        <option value="<?= $row->id_master_alamat ?>" <?php if ($f == $row->id_master_alamat) {
                                                                                            echo "SELECTED";
                                                                                        } ?>><?= $row->nama_master_alamat ?></option>
                                    <?php } ?>

                                </select>
                            </div>
                            <?php if ($f == 7) { ?>
                                <div class="col-4" id="style">
                                    <label class="form-label" id="judul">Alamat Lainnya </label>
                                    <input type="text" placeholder="Alamat Lainnya" class="form-control" name="lainnya" id="lainnya" value="<?= $g ?>">
                                </div>
                            <?php } else { ?>
                                <!-- <div class="col-4" id="style">
                                    <label class="form-label" id="judul">Alamat Lainnya </label>
                                    <input type="text" placeholder="Alamat Lainnya" class="form-control" name="lainnya" id="lainnya" value="">
                                </div> -->
                            <?php } ?>

                        </div>
                        <div class="col-12">
                            <label class="form-label">Keterangan </label>
                            <textarea name="keterangan" id="keterangan" class="form-control"><?= $h ?></textarea>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-warning">Update Data</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->