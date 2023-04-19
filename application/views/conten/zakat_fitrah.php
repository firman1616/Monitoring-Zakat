<main id="main" class="main">

    <div class="pagetitle">
        <h1>Zakat Fitrah</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= base_url('Pembayaran') ?>">Pembayaran Zakat</a></li>
                <li class="breadcrumb-item active">Zakat Fitrah</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
    <div class="flash-fitrah" data-flashdata="<?= $this->session->flashdata('fitrah') ?>"></div>
    <section class="section">


        <div class="row">

            <div class="card">
                <div class="card-body">
                    <!-- <h5 class="card-title">Default Tabs Justified</h5> -->
                    <br><br>
                    <!-- Default Tabs -->
                    <ul class="nav nav-tabs d-flex" id="myTabjustified" role="tablist">
                        <li class="nav-item flex-fill" role="presentation">
                            <button class="nav-link w-100 active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-justified" type="button" role="tab" aria-controls="home" aria-selected="true">
                                <h5>Data Pembayaran Zakat Fitrah</h5>
                            </button>
                        </li>
                        <li class="nav-item flex-fill" role="presentation">
                            <button class="nav-link w-100" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-justified" type="button" role="tab" aria-controls="profile" aria-selected="false">
                                <h5>Tambah Data Zakat Fitrah</h5>
                            </button>
                        </li>
                    </ul>
                    <div class="tab-content pt-2" id="myTabjustifiedContent">
                        <div class="tab-pane fade show active" id="home-justified" role="tabpanel" aria-labelledby="home-tab">
                            <div class="card-body table-responsive">
                                <table class="table datatable">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Nama</th>
                                            <th scope="col">Besaran Jiwa</th>
                                            <th scope="col">Total Beras</th>
                                            <th scope="col">Nominal Pembelian</th>
                                            <th scope="col">Petugas</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $x = 1;
                                        $no = 1;
                                        if ($akses == 1 || $akses == 2) {
                                            foreach ($get_fitrah->result() as $row) {
                                        ?>
                                                <tr>
                                                    <th scope="row"><?= $x++; ?></th>
                                                    <td><?= $row->nama_pemberi_zakat_fitrah ?></td>
                                                    <td><?= $row->besaran_jiwa ?></td>
                                                    <td><?= $row->total_beras ?></td>
                                                    <td><?php if ($row->uang == '') {
                                                            echo "Rp. 0 ,-";
                                                        } else {
                                                            echo "Rp. " . number_format($row->uang) . ',-';
                                                        } ?></td>
                                                    <td><?= $row->nama_petugas ?></td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#DetailFitrah<?= $no++; ?>"><i class="bi bi-file-earmark-medical-fill"></i></button>
                                                        <a href="<?= site_url('Pembayaran/v_edit_fitrah/' . $row->id_zakat_fitrah) ?>" class="btn btn-warning" title="Edit Data"><i class="bi bi-pencil-square"></i></a>
                                                        <?php if ($akses == 1 || $akses == 2) { ?>
                                                            <a href="<?= site_url('Pembayaran/hapus_zakat_fitrah/' . $row->id_zakat_fitrah) ?>" class="btn btn-danger hapus-fitrah" title="Hapus Data User"><i class="bi bi-trash2-fill"></i></a>
                                                        <?php } ?>

                                                    </td>
                                                </tr>
                                            <?php }
                                        } else {
                                            foreach ($get_fitrah_filter->result() as $row) { ?>
                                                <tr>
                                                    <th scope="row"><?= $x++; ?></th>
                                                    <td><?= $row->nama_pemberi_zakat_fitrah ?></td>
                                                    <td><?= $row->besaran_jiwa ?></td>
                                                    <td><?= $row->total_beras ?></td>
                                                    <td><?php if ($row->uang == 'NULL') {
                                                            echo "Rp. 0 ,-";
                                                        } else {
                                                            echo "Rp. " . number_format($row->uang) . ',-';
                                                        } ?></td>
                                                    <td><?= $row->nama_petugas ?></td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#DetailFitrah<?= $no++; ?>"><i class="bi bi-file-earmark-medical-fill"></i></button>
                                                        <a href="<?= site_url('Pembayaran/v_edit_fitrah/' . $row->id_zakat_fitrah) ?>" class="btn btn-warning" title="Edit Data"><i class="bi bi-pencil-square"></i></a>
                                                        <?php if ($akses == 1 || $akses == 2) { ?>
                                                            <a href="" class="btn btn-danger" title="Hapus Data"><i class="bi bi-trash-fill"></i></a>
                                                        <?php } ?>

                                                    </td>
                                                </tr>
                                        <?php }
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- Tambah Data -->
                        <div class="tab-pane fade" id="profile-justified" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="card-body ">
                                <form action="<?= site_url('Pembayaran/tambah_zakat_fitrah') ?>" method="post">
                                    <div class="col-12">
                                        <label class="form-label">Nama Pemberi Zakat <small style="color: red;">*</small></label>
                                        <input type="text" class="form-control" id="nama_pemberi" name="nama_pemberi" required placeholder="ex. Sutaji">
                                    </div>
                                    <div class="row">
                                        <div class="col-4">
                                            <label class="form-label">Banyak Jiwa <small style="color: red;">*</small></label>
                                            <input type="number" class="form-control" id="besaran_jiwa" name="besaran_jiwa" onkeyup="sum();" required placeholder="ex. 7">
                                        </div>
                                        <div class="col-4">
                                            <label class="form-label">Berat Beras <small style="color: red;">*</small></label>
                                            <input type="text" class="form-control" id="satuan_beras" name="satuan_beras" onkeyup="sum();" required placeholder="ex. 2.3">
                                        </div>
                                        <div class="col-4">
                                            <label class="form-label">Total Beras</label>
                                            <input type="text" class="form-control" id="total" name="total" readonly>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-4">
                                            <label class="form-label">Nominal Uang</label>
                                            <input type="number" class="form-control" id="uang" name="uang" placeholder="ex. 100000">
                                        </div>
                                        <div class="col-4">
                                            <label class="form-label">Alamat <small style="color: red;">*</small></label>
                                            <select name="alamat" id="alamat" class="form-control" required>
                                                <option value="" disabled selected>Pilih Alamat</option>
                                                <?php foreach ($get_alamat->result() as $row) { ?>
                                                    <option value="<?= $row->id_master_alamat ?>"><?= $row->nama_master_alamat ?></option>
                                                <?php } ?>

                                            </select>
                                        </div>
                                        <div class="col-4" id="style">
                                            <label class="form-label" id="judul">Alamat Lainnya </label>
                                            <input type="text" placeholder="Alamat Lainnya" class="form-control" name="lainnya" id="lainnya">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label">Keterangan </label>
                                        <textarea name="keterangan" id="keterangan" class="form-control"></textarea>
                                    </div>
                                    <br>
                                    <button type="submit" class="btn btn-success">Simpan Data</button>
                                </form>
                            </div>
                        </div>
                        <!-- End Tambah Data -->
                    </div><!-- End Default Tabs -->

                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->


<?php
$y = 1;
foreach ($get_fitrah->result() as $a) { ?>

    <div class="modal fade" id="DetailFitrah<?= $y++; ?>" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Detail Data</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th scope="row" style="width: 40%;">Nama</th>
                                <td style="width: 5%;">:</td>
                                <td><?= $a->nama_pemberi_zakat_fitrah ?></td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 40%;">Besaran Jiwa</th>
                                <td style="width: 5%;">:</td>
                                <td><?= $a->besaran_jiwa ?></td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 40%;">Total Beras</th>
                                <td style="width: 5%;">:</td>
                                <td><?= $a->total_beras ?></td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 40%;">pembelian Beras</th>
                                <td style="width: 5%;">:</td>
                                <td><?php if ($a->uang == '') {
                                        echo "Rp. 0,-";
                                    } else {
                                        echo 'Rp. ' . number_format($a->uang) . ',-';
                                    } ?></td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 40%;">Alamat</th>
                                <td style="width: 5%;">:</td>
                                <td><?= $a->nama_master_alamat ?> (<?= $a->alamat_lainnya ?>)</td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 40%;">Keterangan</th>
                                <td style="width: 5%;">:</td>
                                <td><?= $a->keterangan ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
<?php $no++;
} ?>