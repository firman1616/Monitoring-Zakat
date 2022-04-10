<main id="main" class="main">

    <div class="pagetitle">
        <h1>Master Pages</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= base_url('Dashboard') ?>">Home</a></li>
                <li class="breadcrumb-item active">Master</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">

                    <!-- Sales Card -->
                    <?php if ($akses == 1) { ?>
                        <div class="col-xxl-4 col-md-6">
                            <a href="<?= site_url('Master/master_user') ?>">
                                <div class="card info-card customers-card">


                                    <div class="card-body">
                                        <h5 class="card-title">Master User </h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-people"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Data User</h6>
                                                <span class="text-success small pt-1 fw-bold"><?= $petugas ?></span> <span class="text-muted small pt-2 ps-1">Users Petugas</span>
                                                <span class="text-success small pt-1 fw-bold"><?= $koor ?></span> <span class="text-muted small pt-2 ps-1">Users Koordinator</span>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </a>
                        </div>
                    <?php } ?>


                    <!-- End Sales Card -->

                    <!-- Revenue Card -->
                    <?php if ($akses == 1) { ?>
                        <div class="col-xxl-4 col-md-6">
                            <a href="<?= base_url('Master/master_alamat') ?>">
                                <div class="card info-card customers-card">

                                    <div class="card-body">
                                        <h5 class="card-title">Master Alamat </h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-geo-alt-fill"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Data Alamat</h6>
                                                <span class="text-success small pt-1 fw-bold"><?= $alamat ?></span> <span class="text-muted small pt-2 ps-1">Alamat</span>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </a>
                        </div>
                    <?php } ?>
                    <!-- End Revenue Card -->

                    <!-- Customers Card -->
                    <?php if ($akses == 1) { ?>
                        <div class="col-xxl-4 col-md-6">
                            <a href="<?= base_url('Master/master_akses') ?>">
                                <div class="card info-card customers-card">

                                    <div class="card-body">
                                        <h5 class="card-title">Master Akses</h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-gear-wide-connected"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Data Akses</h6>
                                                <span class="text-success small pt-1 fw-bold"><?= $j_akses ?></span> <span class="text-muted small pt-2 ps-1">Akses</span>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php } ?>
                    <!-- End Customers Card -->

                    <?php if ($akses == 1 || $akses == 2) { ?>
                        <div class="col-xxl-4 col-md-6">
                            <a href="<?= base_url('Master/master_jabatan') ?>">
                                <div class="card info-card customers-card">
                                    <div class="card-body">
                                        <h5 class="card-title">Master Jabatan </h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-gear-wide-connected"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Data Jabatan</h6>
                                                <span class="text-success small pt-1 fw-bold"><?= $jabatan ?></span> <span class="text-muted small pt-2 ps-1">Jabatan</span>


                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php } ?>
                    <!-- End Customers Card -->

                    <!-- Master Maal -->
                    <?php if ($akses == 1 || $akses == 2) { ?>
                        <div class="col-xxl-4 col-md-6">
                            <a href="<?= base_url('Master/master_maal') ?>">
                                <div class="card info-card customers-card">
                                    <div class="card-body">
                                        <h5 class="card-title">Master Maal </h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-gear-wide-connected"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Data Maal</h6>
                                                <span class="text-success small pt-1 fw-bold"><?= $maal ?></span> <span class="text-muted small pt-2 ps-1">Kategori Maal</span>


                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php } ?>
                    <!-- End Master Maal -->

                    <!-- Master Penerima -->
                    <?php if ($akses == 1 || $akses == 2) { ?>
                        <div class="col-xxl-4 col-md-6">
                            <a href="<?= base_url('Master/master_penerima') ?>">
                                <div class="card info-card customers-card">
                                    <div class="card-body">
                                        <h5 class="card-title">Master Penerima </h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-receipt-cutoff"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>Data Master Penerima</h6>
                                                <span class="text-success small pt-1 fw-bold"><?= $penerima ?></span> <span class="text-muted small pt-2 ps-1">Kategori</span>


                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php } ?>
                    <!-- End Master Penerima -->



                </div>
            </div><!-- End Left side columns -->
        </div>
    </section>

</main><!-- End #main -->