<main id="main" class="main">

    <div class="pagetitle">
        <h1>Data Keuangan</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?= base_url('Dashboard') ?>">Home</a></li>
                <li class="breadcrumb-item active">Data keuangan</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        
        <div class="row">

            <!-- Left side columns -->
            <div class="col-lg-12">
                <div class="row">

                    <!--  Zakat Donatur -->
                    <?php foreach ($jml_donatur->result() as $row) {
                        $a = $row->jumlah;
                    } ?>
                    <div class="col-xxl-6 col-md-6">
                        <a href="<?= base_url('Keuangan/donatur') ?>">
                            <div class="card info-card revenue-card">

                                <div class="card-body">
                                    <h5 class="card-title">Data Donatur </span></h5>

                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-receipt-cutoff"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6>Data Donatur</h6>
                                            <span class="text-success small pt-1 fw-bold">Rp. <?= number_format($a); ?>,-</span>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>
                    <!-- End  Donatur -->

                    <!-- Keuangan -->
                    <div class="col-xxl-6 col-md-6">
                        <a href="<?= base_url('Keuangan/rekap_keuangan') ?>">
                            <div class="card info-card revenue-card">

                                <div class="card-body">
                                    <h5 class="card-title">Data Keuangan </span></h5>

                                    <div class="d-flex align-items-center">
                                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                            <i class="bi bi-currency-exchange"></i>
                                        </div>
                                        <div class="ps-3">
                                            <h6>Data Keuangan</h6>
                                            <span class="text-success small pt-1 fw-bold">200,000</span> <span class="text-muted small pt-2 ps-1">Orang</span>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>
                    <!-- End Keuangan -->



                </div>
            </div><!-- End Left side columns -->
        </div>
    </section>

</main><!-- End #main -->