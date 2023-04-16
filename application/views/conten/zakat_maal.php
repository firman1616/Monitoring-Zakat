<main id="main" class="main">

    <div class="pagetitle">
        <h1>Zakat Maal</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= base_url('Pembayaran') ?>">Pembayaran Zakat</a></li>
                <li class="breadcrumb-item active">Zakat Maal</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
    <div class="flash-maal" data-flashdata="<?= $this->session->flashdata('maal') ?>"></div>
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
                                <h5>Data Pembayaran Zakat Maal</h5>
                            </button>
                        </li>
                        <li class="nav-item flex-fill" role="presentation">
                            <button class="nav-link w-100" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-justified" type="button" role="tab" aria-controls="profile" aria-selected="false">
                                <h5>Tambah Data Zakat Maal</h5>
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
                                            <th scope="col">Kategori Zakat</th>
                                            <th scope="col">Nominal Zakat</th>
                                            <th scope="col">Petugas</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        $x = 1;
                                        if ($akses == 1 || $akses == 2) {
                                            foreach ($get_maal->result() as $row) {
                                        ?>
                                                <tr>
                                                    <th scope="row"><?= $x++; ?></th>
                                                    <td><?= $row->nama_pemberi_maal ?></td>
                                                    <td><?= $row->nama_maal ?></td>
                                                    <td>Rp. <?= number_format($row->nominal_zakat, 2) ?>,-</td>
                                                    <td><?= $row->petugas1 ?></td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#DetailMaal<?= $no++; ?>"><i class="bi bi-file-earmark-medical-fill"></i></button>
                                                        <a href="<?= site_url('Pembayaran/v_edit_maal/' . $row->id_zakat_maal) ?>" class="btn btn-warning" title="Edit Data"><i class="bi bi-pencil-square"></i></a>
                                                        <?php if ($akses == 1 || $akses == 2) { ?>
                                                            <a href="<?= site_url('Pembayaran/hapus_zakat_maal/' . $row->id_zakat_maal) ?>" class="btn btn-danger hapus-fitrah" title="Hapus Data User"><i class="bi bi-trash2-fill"></i></a>
                                                        <?php } ?>

                                                    </td>
                                                </tr>
                                            <?php }
                                        } else {
                                            foreach ($get_maal_filter->result() as $row) { ?>
                                                <tr>
                                                    <th scope="row"><?= $x++; ?></th>
                                                    <td><?= $row->nama_pemberi_maal ?></td>
                                                    <td><?= $row->nama_maal ?></td>
                                                    <td>Rp. <?= number_format($row->nominal_zakat, 2) ?>,-</td>
                                                    <td><?= $row->petugas1 ?></td>
                                                    <td>
                                                        <a href="<?= site_url('Pembayaran/v_edit_maal/' . $row->id_zakat_maal) ?>" class="btn btn-warning" title="Edit Data"><i class="bi bi-pencil-square"></i></a>
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
                                <form action="<?= site_url('Pembayaran/tambah_zakat_maal') ?>" method="post">
                                    <div class="col-12">
                                        <label class="form-label">Nama Pemberi Zakat <small style="color: red;">*</small></label>
                                        <input type="text" class="form-control" id="nama_pemberi" name="nama_pemberi" required placeholder="ex. Sutaji">
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <label class="form-label">Kategori Maal <small style="color: red;">*</small></label>
                                            <select name="kategori_maal" id="kategori_maal" class="form-control">
                                                <option value="" disabled selected>Pilih Kategori</option>
                                                <?php foreach ($get_kategori->result() as $row) { ?>
                                                    <option value="<?= $row->id_master_maal ?>"><?= $row->nama_maal ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">Nominal <small style="color: red;">*</small></label>
                                            <input type="number" class="form-control" id="nominal" name="nominal" required placeholder="ex. 100000">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <label class="form-label">Alamat <small style="color: red;">*</small></label>
                                            <select name="alamat" id="alamat" class="form-control" required>
                                                <option value="" disabled selected>Pilih Alamat</option>
                                                <?php foreach ($get_alamat->result() as $row) { ?>
                                                    <option value="<?= $row->id_master_alamat ?>"><?= $row->nama_master_alamat ?></option>
                                                <?php } ?>

                                            </select>
                                        </div>
                                        <div class="col-6" id="style">
                                            <label class="form-label" id="judul">Alamat Lainnya </label>
                                            <input type="text" placeholder="Alamat Lainnya" class="form-control" name="lainnya" id="lainnya">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <label class="form-label">Keterangan </label>
                                            <textarea name="keterangan" id="keterangan" class="form-control"></textarea>
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">Petugas Lainnya </label>
                                            <select name="petugas2" id="petugas2" class="form-control">
                                                <option value="" disabled selected>Pilih Petugas</option>
                                                <?php foreach ($get_koor->result() as $row) { ?>
                                                    <option value="<?= $row->id_user_petugas ?>"><?= $row->nama_petugas ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
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
foreach ($get_maal->result() as $a) { ?>

    <div class="modal fade" id="DetailMaal<?= $y++; ?>" tabindex="-1">
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
                                <td><?= $a->nama_pemberi_maal ?></td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 40%;">Kategori</th>
                                <td style="width: 5%;">:</td>
                                <td><?= $a->nama_maal ?></td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 40%;">Nominal</th>
                                <td style="width: 5%;">:</td>
                                <td><?= 'Rp. ' . number_format($a->nominal_zakat) . ',-' ?></td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 40%;">Alamat</th>
                                <td style="width: 5%;">:</td>
                                <td><?= $a->nama_master_alamat ?></td>
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