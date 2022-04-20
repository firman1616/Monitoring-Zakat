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

    <section class="section">
        <div class="row">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Data Donatur</h5>

                    <button type="button" class="btn btn-primary">Tambah Data Donatur</button>
                    <table class="table datatable">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nama Donatur</th>
                                <th scope="col">Nominal</th>
                                <th scope="col">Status</th>
                                <th scope="col">Nama Petugas</th>
                                <th scope="col">Start Date</th>
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
                                    <td><?= number_format($row->nominal, 3) ?></td>
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
                                        <?php
                                        if ($row->status == 0) { ?>
                                            <a href="#" class="btn btn-primary"><i class="bi bi-check2"></i></a>
                                        <?php } else { ?>
                                            <a href="#" class="btn btn-success"><i class="bi bi-check2-all"></i></a>
                                        <?php } ?>
                                        <button class="btn btn-warning" type="button" data-bs-toggle="modal" data-bs-target="#editModal<?= $no++; ?>"><i class="bi bi-pencil-square"></i></button>
                                        <a class="hapus-penerima btn btn-danger" href="#"><i class="bi bi-trash"></i></a>
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