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

    <section class="section">
        <div class="row">
            <div class="card">
                <div class="card-body table-responsive">
                    <h5 class="card-title">Data Pembayaran Zakat Fitrah</h5>
                    <table class="table datatable">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Besaran Jiwa</th>
                                <th scope="col">Total Beras</th>
                                <th scope="col">Petugas</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $x = 1;
                            if ($akses == 1 || $akses == 2) {
                                foreach ($get_fitrah->result() as $row) {
                            ?>
                                    <tr>
                                        <th scope="row"><?= $x++; ?></th>
                                        <td><?= $row->nama_pemberi_zakat_fitrah ?></td>
                                        <td><?= $row->besaran_jiwa ?></td>
                                        <td><?= $row->total_beras ?></td>
                                        <td><?= $row->nama_petugas ?></td>
                                        <td>
                                            <button type="button" class="btn btn-warning" title="Edit Data"><i class="bi bi-pencil-square"></i></button>
                                            <?php if ($akses == 1 || $akses == 2) { ?>
                                                <a href="" class="btn btn-danger" title="Hapus Data"><i class="bi bi-trash-fill"></i></a>
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
                                        <td><?= $row->nama_petugas ?></td>
                                        <td>
                                            <button type="button" class="btn btn-warning" title="Edit Data"><i class="bi bi-pencil-square"></i></button>
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


        </div>
    </section>

</main><!-- End #main -->