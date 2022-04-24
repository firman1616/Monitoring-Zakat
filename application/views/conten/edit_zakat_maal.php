<?php
foreach ($get_data->result() as $row) {
    $a = $row->nama_pemberi_maal;
    $b = $row->kategori_zakat;
    $c = $row->nominal_zakat;
    $d = $row->alamat;
    $e = $row->alamat_lainnya;
    $f = $row->petugas2;
    $g = $row->keterangan;
    $i = $row->id_zakat_maal;
}
?>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>Ubah Data Zakat maal</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('Pembayaran') ?>">Pembayaran</a></li>
                <li class="breadcrumb-item"><a href="<?= site_url('Pembayaran/zakat_maal') ?>">Zakat Maal</a> </li>
                <li class="breadcrumb-item active">Ubah Data</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="row">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Ubah Data Zakat</h5>
                    <form action="<?= site_url('Pembayaran/update_zakat_maal/' . $i) ?>" method="post">
                        <div class="col-12">
                            <label class="form-label">Nama Pemberi Zakat <small style="color: red;">*</small></label>
                            <input type="text" class="form-control" id="nama_pemberi" name="nama_pemberi" required value="<?= $a ?>">
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <label class="form-label">Kategori Maal <small style="color: red;">*</small></label>
                                <select name="kategori_maal" id="kategori_maal" class="form-control">
                                    <option value="" disabled selected>Pilih Kategori</option>
                                    <?php foreach ($get_kategori->result() as $row) { ?>
                                        <option <?php if ($b == $row->id_master_maal) {
                                                    echo "SELECTED";
                                                } ?> value="<?= $row->id_master_maal ?>"><?= $row->nama_maal ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="col-6">
                                <label class="form-label">Nominal <small style="color: red;">*</small></label>
                                <input type="number" class="form-control" id="nominal" name="nominal" required value="<?= $c ?>">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <label class="form-label">Alamat <small style="color: red;">*</small></label>
                                <select name="alamat" id="alamat" class="form-control" required>
                                    <option value="" disabled selected>Pilih Alamat</option>
                                    <?php foreach ($get_alamat->result() as $row) { ?>
                                        <option <?php if ($d == $row->id_master_alamat) {
                                                    echo "SELECTED";
                                                } ?> value="<?= $row->id_master_alamat ?>"><?= $row->nama_master_alamat ?></option>
                                    <?php } ?>

                                </select>
                            </div>
                            <?php if ($d == 7) { ?>
                                <div class="col-6" id="style">
                                    <label class="form-label" id="judul">Alamat Lainnya </label>
                                    <input type="text" placeholder="Alamat Lainnya" class="form-control" name="lainnya" id="lainnya" value="<?= $e ?>">
                                </div>
                            <?php } else { ?>
                                <!-- <div class="col-6" id="style">
                                <label class="form-label" id="judul">Alamat Lainnya </label>
                                <input type="text" placeholder="Alamat Lainnya" class="form-control" name="lainnya" id="lainnya">
                            </div> -->
                            <?php } ?>

                        </div>
                        <div class="row">
                            <div class="col-6">
                                <label class="form-label">Keterangan </label>
                                <textarea name="keterangan" id="keterangan" class="form-control"><?= $f ?></textarea>
                            </div>
                            <div class="col-6">
                                <label class="form-label">Petugas Lainnya </label>
                                <select name="petugas2" id="petugas2" class="form-control">
                                    <option value="" disabled selected>Pilih Petugas</option>
                                    <?php foreach ($get_koor->result() as $row) { ?>
                                        <option <?php if ($g == $row->id_user_petugas) {
                                                    echo "SELECTED";
                                                } ?> value="<?= $row->id_user_petugas ?>"><?= $row->nama_petugas ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-warning">Update Data</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->