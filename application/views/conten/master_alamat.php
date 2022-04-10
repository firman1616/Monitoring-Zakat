<main id="main" class="main">

    <div class="pagetitle">
        <h1>Master Alamat</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= site_url('Master') ?>">Master</a></li>
                <li class="breadcrumb-item">Master Alamat</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="row">
            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Data Master Alamat</h5>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nama Alamat</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $x = 1;
                                $no = 1;
                                foreach ($master_alamat->result() as $row) { ?>

                                    <tr>
                                        <th scope="row"><?= $x++; ?></th>
                                        <td><?= $row->nama_master_alamat ?></td>
                                        <td>
                                            <button type="button" class="btn btn-warning" title="Edit Data" data-bs-toggle="modal" data-bs-target="#basicModal<?= $no++; ?>"><i class="bi bi-pencil-square"></i></button>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>

            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Tambah Data Alamat</h5>
                        <form action="<?= site_url('Master/tambah_alamat') ?>" method="post">
                            <div class="col-12">
                                <label for="inputNanme4" class="form-label">Nama Alamat</label>
                                <input type="text" class="form-control" id="inputNanme4" name="nama_alamat">
                            </div>
                            <br>
                            <button type="submit" class="btn btn-primary">Tambah Data</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>

</main><!-- End #main -->

<?php
$y = 1;
foreach ($master_alamat->result() as $row) { ?>
    <div class="modal fade" id="basicModal<?= $y++; ?>" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="<?= site_url('Master/update_alamat/' . $row->id_master_alamat) ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Data</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="col-12">
                            <label for="inputNanme4" class="form-label">Nama Alamat</label>
                            <input type="text" class="form-control" id="inputNanme4" name="nama_alamat" value="<?= $row->nama_master_alamat ?>">
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