<main id="main" class="main">

    <div class="pagetitle">
        <h1>Master Data User</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= base_url('Master') ?>">Master</a></li>
                <li class="breadcrumb-item">Master user</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <div class="flash-user" data-flashdata="<?= $this->session->flashdata('user') ?>"></div>

    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#tambahModal"><i class="bi bi-patch-plus-fill"></i> | Tambah Data User</button>
    <br><br>
    <section class="section">
        <div class="row">
            <div class="card">
                <div class="card-body table-responsive">
                    <h5 class="card-title">User Petugas</h5>
                    <table class="table datatable">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nama Petugas</th>
                                <th scope="col">Username</th>
                                <th scope="col">Password</th>
                                <th scope="col">Alamat</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $x = 1;
                            $pet = 1;
                            foreach ($user_petugas->result() as $row) { ?>

                                <tr>
                                    <th scope="row"><?= $x++; ?></th>
                                    <td><?= $row->nama_petugas ?></td>
                                    <td><?= $row->username ?></td>
                                    <td><?= $row->password ?></td>
                                    <td><?= $row->petugas_alamat ?></td>
                                    <td>
                                        <button type="button" class="btn btn-warning" title="Edit Data User" data-bs-toggle="modal" data-bs-target="#editPetugasModal<?= $pet++; ?>"><i class="bi bi-pencil-square"></i></button>
                                        <a href="<?= site_url('Master/hapus_petugas/' . $row->id_user_petugas) ?>" class="btn btn-danger hapus-user" title="Hapus Data User"><i class="bi bi-trash2-fill"></i></a>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>


    <section class="section">
        <div class="row">
            <div class="card">
                <div class="card-body table-responsive">
                    <h5 class="card-title">User Koordinator</h5>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nama Koordinator</th>
                                <th scope="col">Username</th>
                                <th scope="col">Password</th>
                                <th scope="col">Alamat</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $x = 1;
                            $koor = 1;
                            foreach ($user_koor->result() as $row) { ?>
                                <tr>
                                    <th scope="row"><?= $x++; ?></th>
                                    <td><?= $row->nama_petugas ?></td>
                                    <td><?= $row->username ?></td>
                                    <td><?= $row->password ?></td>
                                    <td><?= $row->petugas_alamat ?></td>
                                    <td>
                                        <button type="button" class="btn btn-warning" title="Edit Data User" data-bs-toggle="modal" data-bs-target="#editKoorModel<?= $koor++; ?>"><i class="bi bi-pencil-square"></i></button>
                                        <a href="<?= site_url('Master/hapus_petugas/' . $row->id_user_petugas) ?>" class="btn btn-danger hapus-user" title="Hapus Data User"><i class="bi bi-trash2-fill"></i></a>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->

<!-- Modal tambah Data -->
<div class="modal fade" id="tambahModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="<?= site_url('Master/tambah_data_user') ?>" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Data User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Tipe User</label>
                        <select name="tipe_user" id="tipe_user" class="form-control" required>
                            <option value="" disabled selected>Pilih Tipe User</option>
                            <option value="1">User Petugas</option>
                            <option value="2">User Koordinator</option>
                        </select>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Nama User</label>
                            <input type="text" class="form-control" name="nama_user" id="nama_user" required>
                        </div>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Username</label>
                            <input type="text" class="form-control" name="username" id="username" required>
                        </div>
                        <label for="inputNanme4" class="form-label">Alamat User</label>
                        <select name="alamat" id="alamat" class="form-control">
                            <option value="" disabled selected>Pilih Alamat User</option>
                            <?php foreach ($master_alamat->result() as $row) { ?>
                                <option value="<?= $row->id_master_alamat ?>"><?= $row->nama_master_alamat ?></option>
                            <?php } ?>
                        </select>
                        <label for="inputNanme4" class="form-label">Akses User</label>
                        <select name="akses" id="akses" class="form-control">
                            <option value="" disabled selected>Pilih Akses User</option>
                            <?php foreach ($master_akses->result() as $row) { ?>
                                <option value="<?= $row->id_akses ?>"><?= $row->nama_akses ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div><!-- End Basic Modal-->
<!-- End Modal tambah Data -->

<!-- Edit Petugas Modal -->
<?php
$y = 1;
foreach ($user_petugas->result() as $row) {
    $a = $row->alamat_petugas;
    $b = $row->level;
?>
    <div class="modal fade" id="editPetugasModal<?= $y++; ?>" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="<?= site_url('Master/update_petugas/' . $row->id_user_petugas) ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title">Tambah Data User</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-12">
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Nama User</label>
                                <input type="text" class="form-control" name="nama_user" id="nama_user" value="<?= $row->nama_petugas ?>">
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Username</label>
                                <input type="text" class="form-control" name="username" id="username" value="<?= $row->username ?>">
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Password</label>
                                <input type="text" class="form-control" name="password" id="password" value="<?= $row->password ?>">
                            </div>
                            <label for="inputNanme4" class="form-label">Alamat User</label>
                            <select name="alamat" id="alamat" class="form-control">
                                <option value="" disabled selected>Pilih Alamat User</option>
                                <?php foreach ($master_alamat->result() as $row) { ?>
                                    <option value="<?= $row->id_master_alamat ?>" <?php if ($a == $row->id_master_alamat) {
                                                                                        echo "SELECTED";
                                                                                    } ?>><?= $row->nama_master_alamat ?></option>
                                <?php } ?>
                            </select>
                            <label for="inputNanme4" class="form-label">Akses User</label>
                            <select name="akses" id="akses" class="form-control">
                                <option value="" disabled selected>Pilih Akses User</option>
                                <?php foreach ($master_akses->result() as $row) { ?>
                                    <option value="<?= $row->id_akses ?>" <?php if ($b == $row->id_akses) {
                                                                                echo "SELECTED";
                                                                            } ?>><?= $row->nama_akses ?></option>
                                <?php } ?>
                            </select>
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
<?php $pet++;
}
?>
<!-- End Edit Petugas Modal -->

<!-- Edit Koor Modal -->
<?php
$z = 1;
foreach ($user_koor->result() as $row) {
    $a = $row->alamat_petugas;
    $d = $row->level;
?>
    <div class="modal fade" id="editKoorModel<?= $z++; ?>" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="<?= site_url('Master/update_petugas/' . $row->id_user_petugas) ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title">Tambah Data User</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-12">
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Nama User</label>
                                <input type="text" class="form-control" name="nama_user" id="nama_user" value="<?= $row->nama_petugas ?>">
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Username</label>
                                <input type="text" class="form-control" name="username" id="username" value="<?= $row->username ?>">
                            </div>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Password</label>
                                <input type="text" class="form-control" name="password" id="password" value="<?= $row->password ?>">
                            </div>
                            <label for="inputNanme4" class="form-label">Alamat User</label>
                            <select name="alamat" id="alamat" class="form-control">
                                <option value="" disabled selected>Pilih Alamat User</option>
                                <?php foreach ($master_alamat->result() as $row) { ?>
                                    <option value="<?= $row->id_master_alamat ?>" <?php if ($a == $row->id_master_alamat) {
                                                                                        echo "SELECTED";
                                                                                    } ?>><?= $row->nama_master_alamat ?></option>
                                <?php } ?>
                            </select>
                            <label for="inputNanme4" class="form-label">Akses User</label>
                            <select name="akses" id="akses" class="form-control">
                                <option value="" disabled selected>Pilih Akses User</option>
                                <?php foreach ($master_akses->result() as $row) { ?>
                                    <option value="<?= $row->id_akses ?>" <?php if ($d == $row->id_akses) {
                                                                                echo "SELECTED";
                                                                            } ?>><?= $row->nama_akses ?></option>
                                <?php } ?>
                            </select>
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
<?php $koor++;
}
?>
<!-- End Edit Koor Modal -->