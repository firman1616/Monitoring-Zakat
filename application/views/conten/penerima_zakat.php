<?php
foreach ($get_data->result() as $v) {
    $validate = $v->validation_data;
}
foreach ($date_valid->result() as $d) {
    $a = $d->validation_data;
    $b = $d->date_validation;
}
?>
<main id="main" class="main">

    <div class="pagetitle">
        <h1>Penerima Zakat</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Penerima</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <div class="flash-penerima" data-flashdata="<?= $this->session->flashdata('penerima') ?>"></div>
    <div class="flash-validasi" data-flashdata="<?= $this->session->flashdata('validasi') ?>"></div>
    <div class="flash-status_penerima" data-flashdata="<?= $this->session->flashdata('validasi2') ?>"></div>
    <div class="flash-data-validation" data-flashdata="<?= $this->session->flashdata('data_valid') ?>"></div>

    <section class="section">
        <div class="row">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Data Penerima Zakat</h5>
                    <?php if ($a != 0 && $akses != 7) { ?>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModal">
                            Tamabh Data Penerima
                        </button>
                    <?php
                    } elseif ($a != 1 && $akses == 7 || $akses != 7) { ?>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModal">
                            Tamabh Data Penerima
                        </button>
                    <?php } ?>

                    <?php
                    if ($akses != 7) {
                        if ($validate == 0) { ?>
                            <a href="<?= site_url('Penerima/update_data_validation') ?>" class="btn btn-danger">Validasi Data</a>
                        <?php } else { ?>
                            <!-- <a href="" class="btn btn-success">Validasi Data</a> -->
                    <?php }
                    }
                    ?>
                    <h5 style="margin-top: 6px;">Data Di Validasi pada : <b><?php if ($b == null) {
                                                                                echo "-";
                                                                            } else {
                                                                                date('d F Y H:i:s', strtotime($b));
                                                                            } ?></b></h5>
                    <table class="table datatable">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Kategori</th>
                                <th scope="col">Koordinator</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action Status</th>
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
                                    <td><?= $row->nama_penerima ?></td>
                                    <td><?= $row->nama_ket ?></td>
                                    <td><?= $row->nama_petugas ?></td>
                                    <td>
                                        <?php if ($row->status == 1) { ?>
                                            <span class="badge bg-success"><i class="bi bi-check-circle me-1"></i> Diterima</span>
                                        <?php } ?>
                                        <?php if ($row->status_penerima == 0) { ?>
                                            <span class="badge bg-success"><i class="bi bi-check-circle me-1"></i> Aktif</span>
                                        <?php } else { ?>
                                            <span class="badge bg-danger"><i class="bi bi-x-lg"></i> NonAktif</span>
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <?php
                                        if ($row->status == 0) { ?>
                                            <a href="<?= site_url('Penerima/update_status_terima/' . $row->id_penerima) ?>" class="btn btn-primary"><i class="bi bi-check2"></i></a>
                                        <?php } else { ?>
                                            <a href="<?= site_url('Penerima/update_status_kembali/' . $row->id_penerima) ?>" class="btn btn-success"><i class="bi bi-check2-all"></i></a>
                                        <?php }
                                        ?>

                                        <?php
                                        if ($a != 0 && $akses != 7) {
                                            if ($akses != 7 && $row->status_penerima == 0) { ?>
                                                <a href="<?= site_url('Penerima/update_penerima_off/' . $row->id_penerima) ?>" class="btn btn-danger"><i class="bi bi-power"></i></a>
                                            <?php    } else { ?>
                                                <a href="<?= site_url('Penerima/update_penerima_on/' . $row->id_penerima) ?>" class="btn btn-primary"><i class="bi bi-power"></i></a>
                                            <?php }
                                        } elseif ($a != 1 && $row->status == 0 && $akses == 7 || $akses != 7) { ?>
                                            <a href="<?= site_url('Penerima/update_penerima_off/' . $row->id_penerima) ?>" class="btn btn-danger"><i class="bi bi-power"></i></a>
                                        <?php }
                                        ?>



                                    </td>
                                    <td>
                                        <?php if ($a != 0 && $akses != 7) { ?>
                                            <button class="btn btn-warning" type="button" data-bs-toggle="modal" data-bs-target="#editModal<?= $no++; ?>"><i class="bi bi-pencil-square"></i></button>
                                            <a class="hapus-penerima btn btn-danger" href="<?= site_url('Penerima/hapus_data_penerima/' . $row->id_penerima) ?>"><i class="bi bi-trash"></i></a>
                                        <?php
                                        } elseif ($a != 1 && $akses == 7 || $akses != 7) { ?>
                                            <button class="btn btn-warning" type="button" data-bs-toggle="modal" data-bs-target="#editModal<?= $no++; ?>"><i class="bi bi-pencil-square"></i></button>
                                            <a class="hapus-penerima btn btn-danger" href="<?= site_url('Penerima/hapus_data_penerima/' . $row->id_penerima) ?>"><i class="bi bi-trash"></i></a>
                                        <?php } ?>
                                    </td>
                                </tr>
                            <?php    }  ?>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->

<!-- Tambah Data -->
<div class="modal fade" id="basicModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="<?= site_url('Penerima/tambah_data_penerima') ?>" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Data Penerima</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Nama Penerima</label>
                        <input type="text" class="form-control" id="nama_penerima" name="nama_penerima" placeholder="ex: Sutaji">
                    </div>
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Kategori Penerima</label>
                        <select name="kategori" id="kategori" class="form-control">
                            <option value="" disabled selected>Pilih Kategori</option>
                            <?php foreach ($kategori->result() as $row) { ?>
                                <option value="<?= $row->id_ket ?>"><?= $row->nama_ket ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <?php if ($akses != 7) { ?>
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Korodinator</label>
                            <select name="koor" id="koor" class="form-control">
                                <option value="" disabled selected>Pilih Kategori</option>
                                <?php foreach ($get_koor->result() as $row) { ?>
                                    <option value="<?= $row->id_user_petugas ?>"><?= $row->nama_petugas ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    <?php } ?>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div><!-- End Basic Modal-->
<!-- End Tambah Data -->

<!-- Edit Modal -->

<!-- End Edit Modal -->

<?php
$y = 1;
foreach ($get_data->result() as $row) {
    $a = $row->ket_penerima;
    $b = $row->koor;
?>
    <div class="modal fade" id="editModal<?= $y++; ?>" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="<?= site_url('Penerima/update_data_penerima/' . $row->id_penerima) ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Data Penerima</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Nama Penerima</label>
                            <input type="text" class="form-control" id="nama_penerima" name="nama_penerima" value="<?= $row->nama_penerima ?>">
                        </div>

                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Kategori Penerima</label>
                            <select name="kategori" id="kategori" class="form-control">
                                <option value="" disabled selected>Pilih Kategori</option>
                                <?php foreach ($kategori->result() as $row) { ?>
                                    <option <?php if ($a == $row->id_ket) {
                                                echo "SELECTED";
                                            } ?> value="<?= $row->id_ket ?>"><?= $row->nama_ket ?></option>
                                <?php } ?>
                            </select>
                        </div>

                        <?php if ($akses != 7) { ?>
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Korodinator</label>
                                <select name="koor" id="koor" class="form-control">
                                    <option value="" disabled selected>Pilih Kategori</option>
                                    <?php foreach ($get_koor->result() as $row) { ?>
                                        <option <?php if ($b == $row->id_user_petugas) {
                                                    echo "SELECTED";
                                                } ?> value="<?= $row->id_user_petugas ?>"><?= $row->nama_petugas ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        <?php } ?>

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