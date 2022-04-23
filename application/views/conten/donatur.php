<main id="main" class="main">

    <div class="pagetitle">
        <h1>Donatur</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('Dashboard') ?>">Home</a></li>
                <li class="breadcrumb-item"><a href="<?= site_url('Keuangan') ?>">Data Keuangan</a></li>
                <li class="breadcrumb-item active">Data Donatur</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
    <div class="flash-donatur" data-flashdata="<?= $this->session->flashdata('donatur') ?>"></div>
    <section class="section">
        <div class="row">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Data Donatur</h5>

                    <!-- Default Tabs -->
                    <ul class="nav nav-tabs d-flex" id="myTabjustified" role="tablist">
                        <li class="nav-item flex-fill" role="presentation">
                            <button class="nav-link w-100 active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-justified" type="button" role="tab" aria-controls="home" aria-selected="true">Data Donatur</button>
                        </li>
                        <li class="nav-item flex-fill" role="presentation">
                            <button class="nav-link w-100" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-justified" type="button" role="tab" aria-controls="profile" aria-selected="false">Tambah Data Donatur</button>
                        </li>
                    </ul>
                    <div class="tab-content pt-2" id="myTabjustifiedContent">
                        <div class="tab-pane fade show active" id="home-justified" role="tabpanel" aria-labelledby="home-tab">
                            <table class="table datatable">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Nama Donatur</th>
                                        <th scope="col">Nominal</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Nama Petugas</th>
                                        <th scope="col">Validation</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $x = 1;
                                    $no = 1;
                                    foreach ($get_data->result() as $row) { ?>
                                        <tr>
                                            <th scope="row"><?= $x++; ?></th>
                                            <td><?= $row->nama_donatur ?></td>
                                            <td>Rp. <?= number_format($row->nominal, 3) ?>,-</td>
                                            <td>
                                                <?php
                                                if ($row->status == 1) { ?>
                                                    <span class="badge bg-success"><i class="bi bi-check-circle me-1"></i> Diterima</span>
                                                <?php } else { ?>
                                                    <span class="badge bg-danger"><i class="bi bi-exclamation-octagon me-1"></i> Menunggu Konfirmasi</span>
                                                <?php }
                                                ?>
                                            </td>
                                            <td><?= $row->nama_petugas ?></td>
                                            <td>
                                                <?php if ($row->validation == NULL) {
                                                    echo "-";
                                                } else {
                                                    echo date('d-m-Y', strtotime($row->validation));
                                                } ?>
                                            </td>
                                            <td>
                                                <?php if ($akses != 7) {
                                                    if ($row->status == 0) { ?>
                                                        <a href="<?= site_url('Keuangan/update_donatur_terima/' . $row->id_donatur) ?>" class="btn btn-primary"><i class="bi bi-check2"></i></a>
                                                    <?php  } else { ?>
                                                        <a href="<?= site_url('Keuangan/update_donatur_tolak/' . $row->id_donatur) ?>" class="btn btn-success"><i class="bi bi-check2-all"></i></a>
                                                <?php }
                                                } ?>

                                                <button class="btn btn-warning" type="button" data-bs-toggle="modal" data-bs-target="#basicModal<?= $no++; ?>"><i class="bi bi-pencil-square"></i></button>
                                                <a class="hapus-donatur btn btn-danger" href="<?= site_url('Keuangan/hapus_donatur/' . $row->id_donatur) ?>"><i class="bi bi-trash"></i></a>

                                            </td>
                                        </tr>
                                    <?php } ?>


                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="profile-justified" role="tabpanel" aria-labelledby="profile-tab">
                            <form action="<?= site_url('Keuangan/tambah_donatur') ?>" method="post">
                                <div class="col-12">
                                    <label for="inputNanme4" class="form-label">Nama Donatur <small style="color: red;">*</small></label>
                                    <input type="text" class="form-control" id="nama_donatur" name="nama_donatur" required placeholder="ex: Jono">
                                </div>
                                <div class="row">
                                    <div class="col-4">
                                        <label for="inputNanme4" class="form-label">Alamat <small style="color: red;">*</small></label>
                                        <select name="alamat" id="alamat" class="form-control" required>
                                            <option value="" disabled selected> Pilih alamat </option>
                                            <?php foreach ($get_alamat->result() as $row) { ?>
                                                <option value="<?= $row->id_master_alamat ?>"><?= $row->nama_master_alamat ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                    <div class="col-4">
                                        <label for="inputNanme4" class="form-label" id="judul">Alamat Lainnya</label>
                                        <input type="text" class="form-control" id="lainnya" name="lainnya">
                                    </div>
                                    <div class="col-4">
                                        <label for="inputNanme4" class="form-label">Nominal <small style="color: red;">*</small></label>
                                        <input type="number" placeholder="ex: 100000" class="form-control" id="nominal" name="nominal" required>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary" style="margin-top: 10px;">Simpan Data</button>
                            </form>
                        </div>
                    </div><!-- End Default Tabs -->

                </div>
            </div>



        </div>
    </section>

</main><!-- End #main -->

<?php
$y = 1;
foreach ($get_data->result() as $row) {
    $a = $row->alamat_donatur;
    $b = $row->alamat_lainnya;
    $c = $row->nominal;
?>

    <div class="modal fade" id="basicModal<?= $y++; ?>" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="<?= site_url('Keuangan/update_donatur/' . $row->id_donatur) ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Data Donatur</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Nama Donatur <small style="color: red;">*</small></label>
                            <input type="text" class="form-control" id="nama_donatur" name="nama_donatur" value="<?= $row->nama_donatur ?>">
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label for="inputNanme4" class="form-label">Alamat <small style="color: red;">*</small></label>
                                <select name="alamat" id="alamat" class="form-control" required>
                                    <option value="" disabled selected> Pilih alamat </option>
                                    <?php foreach ($get_alamat->result() as $row) { ?>
                                        <option <?php if ($a == $row->id_master_alamat) {
                                                    echo "SELECTED";
                                                } ?> value="<?= $row->id_master_alamat ?>"><?= $row->nama_master_alamat ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <?php if ($a == 7) { ?>
                                <div class="col-4">
                                    <label for="inputNanme4" class="form-label" id="judul">Alamat Lainnya</label>
                                    <input type="text" class="form-control" id="lainnya" name="lainnya" value="<?= $b ?>">
                                </div>
                            <?php } ?>

                            <div class="col-4">
                                <label for="inputNanme4" class="form-label">Nominal <small style="color: red;">*</small></label>
                                <input type="number" placeholder="ex: 100000" class="form-control" id="nominal" name="nominal" value="<?= $c ?>">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php $no++;
}
?>